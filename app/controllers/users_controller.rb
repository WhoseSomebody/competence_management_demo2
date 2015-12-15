class UsersController < ApplicationController
  skip_before_action :admin_login, :ensure_login
  def index
  	@user = User.new

  end
  def create
  	@user = User.create(user_params)
  	if @user.valid?
      @user.save
      respond_to do |format|
        format.html { 
          redirect_to login_path, notice: "Ви успішно зареєструвалися!"
        }
      end
    else
      # redirect_to signup_path
      render :index
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :login, :password, :password_confirmation, :email)
    end
end
