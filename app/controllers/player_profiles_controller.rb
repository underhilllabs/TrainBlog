class PlayerProfilesController < ApplicationController
  before_action :set_player_profile, only: [:show, :edit, :update, :destroy]

  def index
    @player_profiles = User.all
  end

  def show
  end

  def new
    @player_profile = PlayerProfile.new
  end

  def edit
  end

  def create
    @player_profile = PlayerProfile.new(player_profile_params)

    respond_to do |format|
      if @player_profile.save
        format.html { redirect_to player_profile_path(current_user.id), notice: 'Player profile was successfully created.' }
        format.json { render :show, status: :created, location: @player_profile }
      else
        format.html { render :new }
        format.json { render json: @player_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @player_profile.update(player_profile_params)
        format.html { redirect_to @player_profile, notice: 'Player profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_profile }
      else
        format.html { render :edit }
        format.json { render json: @player_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_profile
      @player_profile = PlayerProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_profile_params
      params.require(:player_profile).permit(:name, :user_id, :geekname, :about_me, :avatar)
    end
end
