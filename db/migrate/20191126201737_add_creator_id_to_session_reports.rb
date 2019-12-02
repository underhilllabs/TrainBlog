class AddCreatorIdToSessionReports < ActiveRecord::Migration[6.0]
  def change
    add_column :session_reports, :creator_id, :integer
  end
end
