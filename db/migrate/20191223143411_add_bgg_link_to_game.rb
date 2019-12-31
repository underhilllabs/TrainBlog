class AddBggLinkToGame < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :bgg_link, :string
  end
end
