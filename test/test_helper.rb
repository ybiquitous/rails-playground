# frozen_string_literal: true

require File.expand_path('../config/environment', __dir__)
require 'rails/test_help'

module ActiveSupport
  class TestCase
    include FactoryBot::Syntax::Methods
    include Warden::Test::Helpers

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end
