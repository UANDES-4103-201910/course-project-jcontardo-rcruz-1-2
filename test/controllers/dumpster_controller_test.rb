require 'test_helper'

class DumpsterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dumpster_index_url
    assert_response :success
  end

end
