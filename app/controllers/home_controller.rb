class HomeController < ApplicationController
  def index
    @games = Game.order(:title)
    @session_reports = SessionReport.order(game_date: :DESC).all
    # show sidebars
    render layout: 'main_with_sidebar'
  end
end
