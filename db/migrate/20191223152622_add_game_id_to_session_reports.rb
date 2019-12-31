class AddGameIdToSessionReports < ActiveRecord::Migration[6.0]
  def change
    add_reference :session_reports, :game, foreign_key: true
  end
end
