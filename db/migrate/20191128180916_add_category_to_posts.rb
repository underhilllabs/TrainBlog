# frozen_string_literal: true

class AddCategoryToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :category, :string
  end
end
