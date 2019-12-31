class SessionReport < ApplicationRecord
  has_rich_text :content
  validates :title, presence: true
  validates :game_date, presence: true
  belongs_to :creator, class_name: 'User'
  has_many :comments, as: :commentable
  belongs_to :game, optional: true

  def final_stats
    if final_stat.present?
      final_stat.split("\n")
    else
      []
    end
  end

  def player_manifests
    if player_manifest
      player_manifest.split("\n")
    else
      []
    end
  end
end
