# frozen_string_literal: true

class Game < ApplicationRecord
  has_rich_text :content
  validates :title, presence: true
  has_many :session_reports
  has_one_attached :banner
  def to_s
    title.to_s
  end
end
