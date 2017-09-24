# frozen_string_literal: true

class Player < ApplicationRecord
  has_many :player_teams, dependent: :destroy
  has_many :teams, through: :player_teams, dependent: :destroy
end
