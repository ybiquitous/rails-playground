# frozen_string_literal: true

require 'application_system_test_case'

class SessionTest < ApplicationSystemTestCase
  test 'login' do
    create :user, email: 'foo@sample.com', password: 'foo-bar'

    visit root_path
    assert_current_path new_user_session_path
    fill_in 'user_email', with: 'foo@sample.com'
    fill_in 'user_password', with: 'foo-bar'
    click_button 'Log in'
    assert_current_path root_path
  end

  test 'logout' do
    user = create :user
    login_as user

    visit root_path
    click_link 'Logout'
    assert_current_path new_user_session_path
  end
end
