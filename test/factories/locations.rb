# frozen_string_literal: true

FactoryBot.define do
  factory :location do
    sequence(:id)
    name { "location #{id}" }
  end
end
