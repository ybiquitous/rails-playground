# frozen_string_literal: true

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test '#valid?' do
    player = build_stubbed(:player)
    assert { player.valid? }
  end

  test 'has unique teams' do
    player = create(:player)
    team = create(:team)
    player.teams << team
    assert_raises(ActiveRecord::RecordInvalid) { player.teams << team }
  end
end
