require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get access_denied" do
    get :access_denied
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

end
