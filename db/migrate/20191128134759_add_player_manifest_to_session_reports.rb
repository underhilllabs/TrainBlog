class AddPlayerManifestToSessionReports < ActiveRecord::Migration[6.0]
  def change
    add_column :session_reports, :player_manifest, :text
  end
end
