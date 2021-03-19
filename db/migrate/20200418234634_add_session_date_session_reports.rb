# frozen_string_literal: true

class AddSessionDateSessionReports < ActiveRecord::Migration[6.0]
  def change
    add_column :session_reports, :session_date, :date
  end
end
