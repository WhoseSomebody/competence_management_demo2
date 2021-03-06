class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :ensure_login
  before_action :admin_login
  helper_method :logged_in?, :current_user, :admin_check

  protected 
  	def ensure_login
  		redirect_to "/login" unless session[:user_id]
  	end

    def admin_login
      redirect_to "/" unless admin_check
    end

  	def logged_in?
  		session[:user_id]
  	end

  	def current_user
  		@current_user ||= User.find(session[:user_id])
  	end

    def admin_check
      logged_in? && current_user.group == 0
    end
end
