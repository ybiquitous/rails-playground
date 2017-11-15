# frozen_string_literal: true

class PlayerTeam < ApplicationRecord
  belongs_to :player
  belongs_to :team

  validates :player, presence: true
  validates :team, presence: true
  validates :player, uniqueness: { scope: :team }
end
