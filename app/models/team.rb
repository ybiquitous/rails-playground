# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :player_teams, dependent: :destroy
  has_many :players, through: :player_teams, dependent: :destroy

  validates :name, presence: true, length: { maximum: 100 }
end
