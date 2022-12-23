<<<<<<< HEAD
require 'test_helper'
=======
require "test_helper"
>>>>>>> development

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
end
