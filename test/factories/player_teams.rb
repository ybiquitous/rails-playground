# frozen_string_literal: true

FactoryBot.define do
  factory :player_team do
    sequence(:id)
    player
    team
  end
end
