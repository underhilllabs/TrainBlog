# frozen_string_literal: true

class AddBodyToSessionReports < ActiveRecord::Migration[6.0]
  def change
    add_column :session_reports, :body, :text
  end
end
