# frozen_string_literal: true

FactoryGirl.define do
  factory :location do
    sequence(:id)
    name { "location #{id}" }
  end
end
