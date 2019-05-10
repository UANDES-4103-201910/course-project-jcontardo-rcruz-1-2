require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get inedex" do
    get user_inedex_url
    assert_response :success
  end

end
