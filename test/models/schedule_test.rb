require 'test_helper'

class ScheduleTest < ActiveSupport::TestCase
  test "should be valid without a text" do
    schedule(:one).content =  nil
    assert_nil schedule(:one).content
    assert_equal false, shcedule(:one).valid?
  end
end
