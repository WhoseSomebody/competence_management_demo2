class AttemptsController < ApplicationController
  skip_before_action :admin_login
  helper 'surveys'
  before_filter :load_active_survey
  before_filter :normalize_attempts_data, :only => :create


  def new
    @participant = current_user # you have to decide what to do here

    unless @survey.nil?
      @attempt = @survey.attempts.new
      @attempt.answers.build
    end
  end

  def create
    @attempt = @survey.attempts.new(attempt_params)
    @attempt.participant = current_user

    if @attempt.valid? && @attempt.save
      # redirect_to view_context.new_attempt, alert: I18n.t("attempts_controller.#{action_name}")
      # redirect_to root_path, alert: "Тест збережено!"
      redirect_to '/choose_survey', notice: "Тест збережено! Ваш останній результат: #{@attempt.score}"
    else
      #render :action => :new
      redirect_to '/choose_survey', notice: "Тест не збережено :( Трапилася помилка.."
    end
  end

  def choose_survey
    @participant = current_user # you have to decide what to do here
    @active_surveys = Survey::Survey.active
    @chosen_survey
  end


  private
  
  def load_active_survey
    @survey =  Survey::Survey.active[params[:id].to_i]
  end

  def normalize_attempts_data
    normalize_data!(params[:survey_attempt][:answers_attributes])
  end

  def normalize_data!(hash)
    multiple_answers = []
    last_key = hash.keys.last.to_i

    hash.keys.each do |k|
      if hash[k]['option_id'].is_a?(Array)
        if hash[k]['option_id'].size == 1
          hash[k]['option_id'] = hash[k]['option_id'][0]
          next
        else
          multiple_answers <<  k if hash[k]['option_id'].size > 1
        end
      end
    end

    multiple_answers.each do |k|
      hash[k]['option_id'][1..-1].each do |o|
        last_key += 1
        hash[last_key.to_s] = hash[k].merge('option_id' => o)
      end
      hash[k]['option_id'] = hash[k]['option_id'].first
    end
  end

  def attempt_params
    rails4? ? params_whitelist : params[:survey_attempt]
  end

  def params_whitelist
    params.require(:survey_attempt).permit(Survey::Attempt::AccessibleAttributes)
  end
end
