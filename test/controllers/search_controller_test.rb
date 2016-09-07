require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "should get browse" do
    get :browse
    assert_response :success
  end

end
