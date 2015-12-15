class AttemptStatisticController < ApplicationController
	skip_before_action :ensure_login
  	skip_before_action :admin_login
  	helper_method :sort_column, :sort_direction, :filter_col, :value

	def index
		@attempts = Survey::Attempt.all.order(sort_column + " " + sort_direction)
	end


	private
  
	def sort_column
		Survey::Attempt.column_names.include?(params[:sort]) ? params[:sort] : "score"
	end

	def sort_direction
		%w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
	end

	def filter_col
		Survey::Attempt.column_names.include?(params[:filter_col]) ? params[:filter_col] : "score"
	end

	def value
		Survey::Attempt.find_by_sql(["SELECT COUNT(*) FROM 'survey_attempts' WHERE ? = ? ", filter_col, params[:value]]).any? ? params[:value] : "15"
	end

end
