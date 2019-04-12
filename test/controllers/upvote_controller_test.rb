require 'test_helper'

class UpvoteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get upvote_index_url
    assert_response :success
  end

end
