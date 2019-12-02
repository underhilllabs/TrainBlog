class PlayerProfile < ApplicationRecord
  belongs_to :user
  has_rich_text :about_me
  has_one_attached :avatar
end
