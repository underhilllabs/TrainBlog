class HomeController < ApplicationController
  def index
    @session_reports = SessionReport.order(game_date: :DESC).all
  end
end
