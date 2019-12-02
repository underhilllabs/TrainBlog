class Game < ApplicationRecord
  has_many :session_reports
  has_one_attached :banner
end
