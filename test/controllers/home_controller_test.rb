require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get addtask" do
    get :addtask
    assert_response :success
  end

end
