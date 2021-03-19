# frozen_string_literal: true

class AddGameToSessionReports < ActiveRecord::Migration[6.0]
  def change
    add_column :session_reports, :game, :text
  end
end
