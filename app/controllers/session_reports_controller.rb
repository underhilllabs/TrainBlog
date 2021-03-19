# frozen_string_literal: true

class SessionReportsController < ApplicationController
  before_action :authenticate_user!, except: %i[show index]
  before_action :set_session_report, only: %i[show edit update destroy]

  # GET /session_reports
  # GET /session_reports.json
  def index
    # @session_reports = SessionReport.published.order(game_date: :DESC)
    @session_reports = SessionReport.published
  end

  # GET /session_reports/1
  # GET /session_reports/1.json
  def show
    @final_stat = @session_report.final_stats
    @final_standing = @session_report.final_standings
    @player_manifest = @session_report.player_manifests
  end

  # GET /session_reports/new
  def new
    @session_report = SessionReport.new
  end

  # GET /session_reports/1/edit
  def edit; end

  # POST /session_reports
  # POST /session_reports.json
  def create
    @session_report = SessionReport.create session_report_params
    respond_to do |format|
      if @session_report.save
        format.html { redirect_to @session_report, notice: 'Session report was successfully created.' }
        format.json { render :show, status: :created, location: @session_report }
      else
        format.html { render :new }
        format.json { render json: @session_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /session_reports/1
  # PATCH/PUT /session_reports/1.json
  def update
    respond_to do |format|
      if @session_report.update(session_report_params)
        format.html { redirect_to @session_report, notice: 'Session report was successfully updated.' }
        format.json { render :show, status: :ok, location: @session_report }
      else
        format.html { render :edit }
        format.json { render json: @session_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /session_reports/1
  # DELETE /session_reports/1.json
  def destroy
    authorize @session_report
    @session_report.published = false
    @session_report.save
    respond_to do |format|
      format.html { redirect_to session_reports_url, notice: 'Session report has been unpublished.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_session_report
    @session_report = SessionReport.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def session_report_params
    params.require(:session_report).permit(:title, :content, :game_date, :session_date, :game, :creator, :creator_id, :final_stat, :player_manifest, :game_id, :final_standing, :published, :game_link)
  end
end
