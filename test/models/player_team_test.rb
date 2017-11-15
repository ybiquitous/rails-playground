# frozen_string_literal: true

require 'test_helper'

class PlayerTeamTest < ActiveSupport::TestCase
  test '#valid?' do
    assert { build_stubbed(:player_team).valid? }
  end
end
