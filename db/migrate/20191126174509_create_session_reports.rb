# frozen_string_literal: true

class CreateSessionReports < ActiveRecord::Migration[6.0]
  def change
    create_table :session_reports do |t|
      t.string :title

      t.timestamps
    end
  end
end
