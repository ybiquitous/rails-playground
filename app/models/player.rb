# frozen_string_literal: true

class Player < ApplicationRecord
  enum status: { inactive: 0, active: 1 }

  has_many :player_teams, dependent: :destroy
  has_many :teams, through: :player_teams, dependent: :destroy

  validates :name, presence: true, length: { maximum: 100 }
  validates :status, presence: true
end
