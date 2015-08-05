class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(name: user_params[:name])
      if @user && @user.authenticate(user_params[:password])
        login!(@user)
        redirect_to user_path(@user.id)
      else
        flash[:message] = "Username or Password error."
        redirect_to new_user_path
      end
  end

  def createfb
    User.from_omniauth(env["omniauth.auth"])
    @user = User.from_omniauth(env["omniauth.auth"])
    login!(@user)
    redirect_to @user
  end

  def destroy
    logout!
    redirect_to new_user_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :password)
  end

end
