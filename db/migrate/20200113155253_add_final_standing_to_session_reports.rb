class AddFinalStandingToSessionReports < ActiveRecord::Migration[6.0]
  def change
    add_column :session_reports, :final_standing, :text
  end
end
