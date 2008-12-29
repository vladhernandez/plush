require 'test_helper'

class ThankYousControllerTest < ActionController::TestCase
  should "send an email after order is created" do
    post :create, :thank_you => { }
    assert_sent_email do |email|
       email.subject =~ /Thank You /
    end
  end
  

  def test_should_get_index
    login_as :aaron
    get :index
    assert_response :success
    assert_not_nil assigns(:thank_yous)
  end
  
  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_thank_you
    assert_difference('ThankYou.count') do
      post :create, :thank_you => { }
    end
  
    assert_redirected_to thank_you_path(assigns(:thank_you))
  end
  
  def test_should_show_thank_you
    get :show, :id => thank_yous(:one).id
    assert_response :success
  end
  
  def test_should_get_edit
    login_as :aaron
    get :edit, :id => thank_yous(:one).id
    assert_response :success
  end
  
  def test_should_update_thank_you
    login_as :aaron
    put :update, :id => thank_yous(:one).id, :thank_you => { }
    assert_redirected_to thank_you_path(assigns(:thank_you))
  end
  
  def test_should_destroy_thank_you
    login_as :aaron
    assert_difference('ThankYou.count', -1) do
      delete :destroy, :id => thank_yous(:one).id
    end
  
    assert_redirected_to thank_yous_path
  end
end
