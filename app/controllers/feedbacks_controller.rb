class FeedbacksController < ApplicationController
  skip_before_action :ensure_login
  before_action :set_feedback, only: [:show, :edit, :update, :destroy]

  # GET /feedbacks
  # GET /feedbacks.json
  def index
    @feedback = Feedback.new

    @feedbacks_p = Feedback.order("created_at DESC").page(params[:page]).per(5)
  end

  # POST /feedbacks
  # POST /feedbacks.json
  def create
    @feedback = Feedback.new(feedback_params)

    if @feedback.valid?
      @feedback.save
      respond_to do |format|
        format.html { 
          redirect_to feedbacks_url
          flash[:alert] = 'Added'
        }
      end
    else
      @feedbacks_p = Feedback.order("created_at DESC").page(params[:page]).per(5)

      render :index
    end

  end

  # DELETE /feedbacks/1
  # DELETE /feedbacks/1.json
  def destroy
    @feedback.destroy
    respond_to do |format|
      format.html { 
        redirect_to feedbacks_url
        flash[:alert] = 'Destroyed' 
      }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feedback
      @feedback = Feedback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feedback_params
      params.require(:feedback).permit(:name, :email, :content, :created_at)
    end
end
