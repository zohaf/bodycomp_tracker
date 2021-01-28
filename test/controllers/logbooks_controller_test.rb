require 'test_helper'

class LogbooksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get logbooks_new_url
    assert_response :success
  end

end
