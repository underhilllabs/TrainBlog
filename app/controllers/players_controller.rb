class PlayersController < ApplicationController
  def show
    @player_profile = User.find(params[:id]).player_profile
  end

  def index
    @players = PlayerProfile.all
  end
end
