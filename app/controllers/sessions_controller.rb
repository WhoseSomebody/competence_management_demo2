class SessionsController < ApplicationController

  skip_before_action :admin_login, :ensure_login
  def new
  end

  def create
  	user = User.find_by(login: params[:user][:login])
    if user.nil? 
      user = User.find_by(email: params[:user][:login])
    end
  	password = params[:user][:password]

  	if user && user.authenticate(password)
  		session[:user_id] = user.id
  		redirect_to root_path, alert: "Ви успішно увійшли до системи!"
  	else
  		redirect_to login_path, alert: "Здається, Ви невірно ввели логін та/чи пароль :("
  	end
  end

  def destroy
  	reset_session
  	redirect_to(:back)
  end
end
