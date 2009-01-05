require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  
  should "allow unique view (store) for '/store' " do
    get "store"
    assert_response :success
    # assert_select 'body.landing'
  end
  
  should "allow unique view (custom) for '/custom' " do
    get "custom"
    assert_response :success
    # assert_select 'body.landing'
  end
  
  should "have shaded class for categories pages" do
    Category.find(:all).each do |cat|
      get :show, :id => cat.permalink
      assert_select "body.shaded"
    end
  end
  
  
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:categories)
  end
  
  def test_should_get_new
    login_as :aaron
    get :new
    assert_response :success
  end
  
  def test_should_create_category
    login_as :aaron
    assert_difference('Category.count') do
      post :create, :category => { }
    end
  
    assert_redirected_to category_path(assigns(:category))
  end
  
  def test_should_show_category
    get :show, :id => categories(:category_00069).permalink
    assert assigns(:category)
    assert_response :success
  end
  
  def test_should_get_edit
    login_as :aaron
    get :edit, :id => categories(:category_00069).permalink
    assert_response :success
  end
  
  def test_should_update_category
    login_as :aaron
    put :update, :id => categories(:category_00069).permalink, :category => { }
    assert_redirected_to category_path(assigns(:category))
  end
  
  def test_should_destroy_category
    login_as :aaron
    assert_difference('Category.count', -1) do
      delete :destroy, :id => categories(:category_00069).permalink
    end
  
    assert_redirected_to categories_path
  end
end
