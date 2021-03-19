# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @games = Game.order(:title)
    @session_reports = SessionReport.published.order(game_date: :ASC).last(10).reverse
    # show sidebars
    render layout: 'main_with_sidebar'
  end
end
