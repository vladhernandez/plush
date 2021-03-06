require 'test_helper'

class PagesControllerTest < ActionController::TestCase

  should "get gift certicates" do
    get "gift-certificates"
    assert_response :success
    assert_template 'gift-certificates'
    assert_select 'h1'
  end



  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:pages)
  end

  def test_should_get_new
    login_as :aaron
    get :new
    assert_response :success
  end

  def test_should_create_page
    login_as :aaron
    assert_difference('Page.count') do
      post :create, :page => { }
    end

    assert_redirected_to page_path(assigns(:page))
  end

  def test_should_show_page
    get :show, :id => pages(:one).permalink
    assert_response :success
  end

  def test_should_get_edit
    login_as :aaron
    get :edit, :id => pages(:one).permalink
    assert_response :success
  end

  def test_should_update_page
    login_as :aaron
    put :update, :id => pages(:one).permalink, :page => { }
    assert_redirected_to page_path(assigns(:page))
  end

  def test_should_destroy_page
    login_as :aaron
    assert_difference('Page.count', -1) do
      delete :destroy, :id => pages(:one).permalink
    end

    assert_redirected_to pages_path
  end
end
