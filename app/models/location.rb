# frozen_string_literal: true

class Location < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
end
