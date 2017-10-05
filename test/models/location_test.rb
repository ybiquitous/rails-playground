# frozen_string_literal: true

require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  test '#valid?' do
    location = build_stubbed(:location)
    assert { location.valid? }
  end
end
