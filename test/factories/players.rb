# frozen_string_literal: true

FactoryGirl.define do
  factory :player do
    sequence(:id)
    name { "player #{id}" }
  end
end
