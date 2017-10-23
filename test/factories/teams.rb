# frozen_string_literal: true

FactoryBot.define do
  factory :team do
    sequence(:id)
    name { "team #{id}" }
  end
end
