# frozen_string_literal: true

class AddPublishedToSessionReports < ActiveRecord::Migration[6.0]
  def change
    add_column :session_reports, :published, :boolean
  end
end
