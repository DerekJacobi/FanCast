class GamesController < ApplicationController
  before_action :set_team, only: [:teampage]

  helper_method :team_name

  def index
  end

  def show
  end

  def teampage
    team_name(@team)
    nfl = Schedule.first
    en2 = nfl.content['weeks'][0]['games']
    en3 = en2.select {|week| week["home"] == @team_id}
    en3 |= en2.select {|week| week["away"] == @team_id}
    if en3[0]["home"] == @team_id
      @next_opponent =  en3[0]["away"]
    elsif en3[0]["away"] == @team_id
      @next_opponent =  en3[0]["home"]
    end
    @stadium = en3[0]["venue"]["name"]
    @city = en3[0]["venue"]["city"]
    @state = en3[0]["venue"]["state"]
    @capacity = en3[0]["venue"]["capacity"]
    @surface = en3[0]["venue"]["surface"]
    @type = en3[0]["venue"]["type"]
    @nextgamedate = en3[0]["scheduled"].to_s[6..9]
    if current_user
        @followTeams = current_user.follow_teams.all
        @followTeam = current_user.follow_teams.find_by(team:@team)
        @followTeamNew = FollowTeam.new

  end
end

  private

  def set_team
    @team = params[:team].capitalize
  end

  def team_name(team)
    if team == "Jets"
      @team_id = "NYJ"
    elsif team == "Patriots"
      @team_id = "NE"
    elsif team == "Bills"
      @team_id = "BUF"
  elsif team == "Dolphins"
      @team_id = "MIA"
  elsif team == "Cowboys"
      @team_id = "DAL"
  elsif team == "Giants"
      @team_id = "NYG"
  elsif team == "Eagles"
      @team_id = "PHI"
  elsif team == "Redskins"
      @team_id = "WAS"
  elsif team == "Broncos"
      @team_id = "DEN"
  elsif team == "Chiefs"
      @team_id = "KC"
  elsif team == "Raiders"
      @team_id = "OAK"
  elsif team == "Chargers"
      @team_id = "SD"
  elsif team == "Cardinals"
      @team_id = "ARI"
  elsif team == "49ers"
      @team_id = "SF"
  elsif team == "Stlouis"
      @team_id = "STL"
  elsif team == "Ravens"
      @team_id = "BAL"
  elsif team == "Bengals"
      @team_id = "CIN"
  elsif team == "Browns"
      @team_id = "CLE"
  elsif team == "Steelers"
      @team_id = "Pit"
  elsif team == "Packers"
      @team_id = "GB"
  elsif team == "Bears"
      @team_id = "CHI"
  elsif team == "Lions"
      @team_id = "DET"
  elsif team == "Vikings"
      @team_id = "MIN"
  elsif team == "Texans"
      @team_id = "HOU"
  elsif team == "Colts"
      @team_id = "IND"
  elsif team == "Jaguars"
      @team_id = "JAC"
  elsif team == "Titans"
      @team_id = "TEN"
  elsif team == "Falcons"
      @team_id = "ATL"
  elsif team == "Panthers"
      @team_id = "CAR"
  elsif team == "Saints"
      @team_id = "NO"
  elsif team == "Buccaneers"
      @team_id = "TB"
  end
end

end
