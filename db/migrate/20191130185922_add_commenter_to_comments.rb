class AddCommenterToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :commenter, :string
    add_reference :comments, :user, null: true, foreign_key: true
  end
end
