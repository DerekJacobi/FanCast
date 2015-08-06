class GamesController < ApplicationController
  before_action :set_team

  def index
  end

  def show
  end

  private

  def set_team
    @team = params[:team].capitalize
  end

end
