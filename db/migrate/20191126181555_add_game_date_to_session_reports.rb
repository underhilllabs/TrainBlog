# frozen_string_literal: true

class AddGameDateToSessionReports < ActiveRecord::Migration[6.0]
  def change
    add_column :session_reports, :game_date, :datetime
  end
end
