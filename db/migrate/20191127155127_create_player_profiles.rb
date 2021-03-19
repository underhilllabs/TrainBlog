# frozen_string_literal: true

class CreatePlayerProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :player_profiles do |t|
      t.string :name
      t.string :geekname
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
