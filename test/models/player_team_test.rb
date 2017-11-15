# frozen_string_literal: true

require 'test_helper'

class PlayerTeamTest < ActiveSupport::TestCase
  test '#valid?' do
    assert { build_stubbed(:player_team).valid? }
  end

  test '#valid? for uniqueness' do
    exist = create(:player_team)
    tested = build_stubbed(:player_team, player: exist.player, team: exist.team)
    assert { !tested.valid? }
    assert { tested.errors[:player] == ['has already been taken'] }
  end
end
