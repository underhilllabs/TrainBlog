# frozen_string_literal: true

class RemoveGameFromSessionReports < ActiveRecord::Migration[6.0]
  def change
    remove_column :session_reports, :game
  end
end
