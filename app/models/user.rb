# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :initialize_player_profile
  has_many :session_reports, class_name: 'SessionReport', foreign_key: :creator_id
  has_one :player_profile, dependent: :destroy

  def to_s
    username.to_s
  end

  private

  def initialize_player_profile
    self.player_profile = PlayerProfile.create(user_id: id)
  end
end
