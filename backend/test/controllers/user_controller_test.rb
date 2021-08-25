require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get api/v1" do
    get user_api/v1_url
    assert_response :success
  end
end
