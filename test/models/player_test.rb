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

  test 'status' do
    player = create(:player)
    assert { !player.active? }
    assert { player.inactive? }

    player.update!(status: :active)
    assert { player.active? }
    assert { !player.inactive? }

    player.status = nil
    assert { !player.valid? }
    assert { player.errors.key?(:status) }
  end
end
