# frozen_string_literal: true

require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  test '#valid?' do
    team = build_stubbed(:team)
    assert { team.valid? }
  end
end
