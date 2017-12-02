# frozen_string_literal: true

require 'test_helper'

class PlayerDecoratorTest < Draper::TestCase
  test 'created_at' do
    player = Player.new(created_at: '2017-12-01T12:34:56').decorate
    assert do
      player.created_at == '<time datetime="2017-12-01T12:34:56Z">December 01, 2017 12:34</time>'
    end
  end

  test 'updated_at' do
    player = Player.new(updated_at: '2017-12-01T12:34:56').decorate
    assert do
      player.updated_at == '<time datetime="2017-12-01T12:34:56Z">December 01, 2017 12:34</time>'
    end
  end
end
