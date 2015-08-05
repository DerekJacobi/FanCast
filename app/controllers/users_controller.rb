class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @users = User.all
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
          format.html { redirect_to @user, notice: 'Welcome! Thanks for creating an account!' }
          format.json { render :show, status: :created, location: @user }
          login!(@user)
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_user
    if User.exists?(params[:id])
      @user = User.find(params[:id])
    else
      redirect_to new_user_path
    end
  end

  def user_params
    params.require(:user).permit(:username, :password, :location, :email, :location, :mixlr, :role, :facebook, :twitter, :instagram, :broadcast_id, :event_id, :provider, :uid, :name, :image, :oauth_token, :oauth_expires_at, :image)
  end

end
