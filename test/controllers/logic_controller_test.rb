require 'test_helper'

class LogicControllerTest < ActionDispatch::IntegrationTest
  test "should get think" do
    get logic_think_url
    assert_response :success
  end

  test "should get good" do
    get logic_good_url
    assert_response :success
  end

end
