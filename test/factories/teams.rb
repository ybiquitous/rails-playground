# frozen_string_literal: true

FactoryGirl.define do
  factory :team do
    sequence(:id)
    name { "team #{id}" }
  end
end
