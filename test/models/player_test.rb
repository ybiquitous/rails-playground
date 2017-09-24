# frozen_string_literal: true

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test '#valid?' do
    player = build_stubbed(:player)
    assert { player.valid? }
  end
end
