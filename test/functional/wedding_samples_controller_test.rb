require 'test_helper'

class WeddingSamplesControllerTest < ActionController::TestCase
  should "send an email after order is created" do
    post :create, :wedding_sample => { }
    assert_sent_email do |email|
       email.subject =~ /Wedding Sample /
    end
  end
  
  
  def test_should_get_index
    login_as :aaron
    get :index
    assert_response :success
    assert_not_nil assigns(:wedding_samples)
  end
  
  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_wedding_sample
    assert_difference('WeddingSample.count') do
      post :create, :wedding_sample => { }
    end
  
    assert_redirected_to wedding_sample_path(assigns(:wedding_sample))
  end
  
  def test_should_show_wedding_sample
    get :show, :id => wedding_samples(:one).id
    assert_response :success
  end
  
  def test_should_get_edit
    login_as :aaron
    get :edit, :id => wedding_samples(:one).id
    assert_response :success
  end
  
  def test_should_update_wedding_sample
    login_as :aaron
    put :update, :id => wedding_samples(:one).id, :wedding_sample => { }
    assert_redirected_to wedding_sample_path(assigns(:wedding_sample))
  end
  
  def test_should_destroy_wedding_sample
    login_as :aaron
    assert_difference('WeddingSample.count', -1) do
      delete :destroy, :id => wedding_samples(:one).id
    end
  
    assert_redirected_to wedding_samples_path
  end
end
