# frozen_string_literal: true

FactoryBot.define do
  factory :player do
    sequence(:id)
    name { "player #{id}" }
  end
end
