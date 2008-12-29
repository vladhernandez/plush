require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  should "require login for admin" do
    get :index
    assert_response :redirect
    login_as :aaron
    get :index
    assert_response :success
  end
end
