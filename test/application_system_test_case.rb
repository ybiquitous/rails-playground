# frozen_string_literal: true

require 'test_helper'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  # > To use Chrome in the container-based environment, pass the --no-sandbox flag to the chrome executable.
  # See https://docs.travis-ci.com/user/chrome#sandboxing
  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400], options: { args: %w[--no-sandbox] }
end
