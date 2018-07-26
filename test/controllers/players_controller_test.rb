# frozen_string_literal: true

require 'test_helper'

class PlayersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    sign_in create(:user)
  end

  test '#index' do
    get '/players'
    assert { status == 200 }
  end

  test '#show' do
    id = create(:player).id
    get "/players/#{id}"
    assert { status == 200 }
  end

  test '#new' do
    get '/players/new'
    assert { status == 200 }
  end

  test '#edit' do
    id = create(:player).id
    get "/players/#{id}"
    assert { status == 200 }
  end

  test '#create' do
    post '/players', params: { player: { name: 'abc', status: 'active' } }
    follow_redirect!
    assert { status == 200 }
    assert { path == "/players/#{Player.last.id}" }
  end

  test '#update' do
    id = create(:player).id
    put "/players/#{id}", params: { player: { name: 'foo', status: 'inactive' } }
    follow_redirect!
    assert { status == 200 }
    assert { path == "/players/#{id}" }
  end

  test '#destroy' do
    id = create(:player).id
    delete "/players/#{id}"
    follow_redirect!
    assert { status == 200 }
    assert { path == '/players' }
  end
end
