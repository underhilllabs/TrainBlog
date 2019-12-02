class AddFinalStatToSessionReports < ActiveRecord::Migration[6.0]
  def change
    add_column :session_reports, :final_stat, :text
  end
end
