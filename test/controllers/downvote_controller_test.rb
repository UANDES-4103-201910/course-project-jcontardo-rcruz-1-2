require 'test_helper'

class DownvoteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get downvote_index_url
    assert_response :success
  end

end
