class UsersController < ApplicationController

  before_action :set_user, only: [:bc, :show, :edit, :update, :destroy]


  def index
    @users = User.broadcaster.all
  end

  def show
    @users = User.all
    @followteams = current_user.follow_teams.all
    @broadcasts = Broadcast.all
    @games = Game.all
    @followUsers = current_user.follows.all
    @followUsersUpdate = current_user.follows.all
    @followUser = current_user.follows.find_by(follower_id:@user.id)
    @followUserNew = Follow.new
  end


  def new
    @user = User.new
  end

  def edit
    @user = User.find_by(id:current_user.id)
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

  def update
  respond_to do |format|
    if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Your account was successfully updated!' }
        format.json { render :show, status: :created, location: @user }
        login!(@user)
    else
      format.html { redirect_to new_user_path }
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
