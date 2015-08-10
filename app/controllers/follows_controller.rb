class FollowsController < ApplicationController
  before_action :set_follow, only: [:show, :edit, :update, :destroy]


def new
  @follow = Follow.new
end

def create
  @follow = Follow.new(follow_params)
  if @follow.save
    flash[:message] = "You are now following this Broadcaster"
    redirect_to :back
  else
    flash[:message] = "Error"
  end
end

def update
  @user = User.find_by(id: @follow.user_id)
  respond_to do |format|
    if @follow.update(follow_params)
      format.html { redirect_to @user, notice: 'Follow was updated' }
      format.json { render :back, status: :ok, location: @follow }
    else
      format.html { render :edit }
      format.json { render json: @follow.errors, status: :unprocessable_entity }
    end
  end
end

def destroy
  @follow.destroy
end

private
  def set_follow
    if Follow.exists?(params[:id])
      @follow = Follow.find(params[:id])
    else
      redirect_to user_path
    end
  end

  def follow_params
    params.require(:follow).permit(:active, :follower_id , :user_id)
  end
end
