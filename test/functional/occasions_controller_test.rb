require 'test_helper'

class OccasionsControllerTest < ActionController::TestCase
  should "send an email after order is created" do
    post :create, :occasion => { }
    assert_sent_email do |email|
       email.subject =~ /Occasion /
    end
  end
  
  def test_should_get_index
    login_as :aaron
    get :index
    assert_response :success
    assert_not_nil assigns(:occasions)
  end
  
  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_occasion
    assert_difference('Occasion.count') do
      post :create, :occasion => { }
    end
  
    assert_redirected_to occasion_path(assigns(:occasion))
  end
  
  def test_should_show_occasion
    get :show, :id => occasions(:one).id
    assert_response :success
  end
  
  def test_should_get_edit
    login_as :aaron
    get :edit, :id => occasions(:one).id
    assert_response :success
  end
  
  def test_should_update_occasion
    login_as :aaron
    put :update, :id => occasions(:one).id, :occasion => { }
    assert_redirected_to occasion_path(assigns(:occasion))
  end
  
  def test_should_destroy_occasion
    login_as :aaron
    assert_difference('Occasion.count', -1) do
      delete :destroy, :id => occasions(:one).id
    end
  
    assert_redirected_to occasions_path
  end
end
