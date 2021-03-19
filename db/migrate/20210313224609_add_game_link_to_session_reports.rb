# frozen_string_literal: true

class AddGameLinkToSessionReports < ActiveRecord::Migration[6.0]
  def change
    add_column :session_reports, :game_link, :string
  end
end
