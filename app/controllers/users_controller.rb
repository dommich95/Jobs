class UsersController < ApplicationController
  before_action :check_for_admin, :only  => [:index] #checks for admin if true then the admin get the user index page to see if not its a normal users
  def index
     @users = User.all
  end
  def new
    @user = User.new
  end

  def create #Sign up for a new account
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :family, :email, :password, :password_confirmation)
  end
end