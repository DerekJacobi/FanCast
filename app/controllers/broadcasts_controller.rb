class BroadcastsController < ApplicationController
  before_action :set_broadcaster, only: [:show, :edit, :update, :destroy]


  def index
  end


  def show
      @games = Game.all
      @game =Game.new
      if current_user
        @follows = current_user.follows
        @follow = current_user.follows.find_by(user_id:@broadcaster.id)
      end
      @followNew = Follow.new

  end


  def new
    @broadcast = Broadcast.new
  end

  def edit
    @broadcaster_back = broadcaster.find_by(id:current_user.id)
  end

  def makebroadcast
    @nfl = Schedule.first.content['weeks'][0]['games']
    @current_user
  end

  def create
    @broadcast = Broadcast.new(broadcast_params)
    respond_to do |format|
      if @broadcast.save
        format.html { redirect_to @broadcast, notice: 'broadcaster was successfully created.' }
        format.json { render :show, status: :created, location: @broadcast }
      else
        format.html { render :new }
        format.json { render json: @broadcast.errors, status: :unprocessable_entity }
      end
    end

  end

  # def update
  #   respond_to do |format|
  #     if @broadcaster.update(user_params)
  #       format.html { redirect_to @broadcaster, notice: 'broadcaster was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @broadcaster }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @broadcaster.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # def destroy
  #   @broadcaster.destroy
  #   respond_to do |format|
  #     format.html { redirect_to broadcasts_url, notice: 'broadcaster was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private


    def set_broadcaster
      if User.exists?(params[:id])
        @broadcaster = User.find(params[:id])
      else
        redirect_to broadcasts_path
      end
    end

    def broadcast_params
      params.permit(:game_id, :user_id)
    end

end
