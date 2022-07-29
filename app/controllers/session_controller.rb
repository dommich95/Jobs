class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by :email => params[:email] # check for user email
    if user.present? && user.authenticate(params[:password])# check if passowrd is correct to the signed up account
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = "Sorry, login faild" # if either was wrong
      redirect_to login_path
    end
  end

  def destroy # log out
    session[:user_id] = nil
    redirect_to login_path
  end
end
