class FollowTeamsController < ApplicationController

  before_action :set_follow, only: [:show, :edit, :update, :destroy]

  def index
		@followTeams = Follow.all
	end

 	def new
 		@followTeam = Follow.new
 	end

 	def create
 		@followTeam = FollowTeam.new(follow_team_params)
 		if @followTeam.save
      flash[:message] = "You are now following this Team"
      redirect_to :back
 		else
      flash[:message] = "Error"
 		end
 	end

  def update
    @user= User.find_by(id: @followTeam.user_id)
    respond_to do |format|
      if @followTeam.update(follow_team_params)
        format.html { redirect_to :back, notice: 'Follow was updated' }
        format.json { render :back, status: :ok, location: @followTeam }
      else
        format.html { render :edit }
        format.json { render json: @followTeam.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @followTeam.destroy
  end

 	private
  def set_follow
    if FollowTeam.exists?(params[:id])
      @followTeam = FollowTeam.find(params[:id])
    else
      redirect_to events_path
    end
  end

 	def follow_team_params
 		params.require(:follow_team).permit(:active, :team, :user_id)
 	end

end
