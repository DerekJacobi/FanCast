class FollowTeamsController < ApplicationController


def create
  @followteam = FollowTeam.new
  @followteam.save

end

def update
  @followteam = FollowTeam.find_by(team:@followteam.team)
  @followteam.update


end
