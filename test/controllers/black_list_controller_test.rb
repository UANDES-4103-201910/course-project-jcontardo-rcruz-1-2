require 'test_helper'

class BlackListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get black_list_index_url
    assert_response :success
  end

end
