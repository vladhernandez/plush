require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  def test_should_get_index
    login_as :aaron
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  def test_should_get_new
    login_as :aaron
    get :new
    assert_response :success
  end

  def test_should_create_product
    login_as :aaron
    assert_difference('Product.count') do
      post :create, :product => { }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  def test_should_show_product
    get :show, :id => products(:product_00197).permalink
    assert_response :success
  end

  def test_should_get_edit
    login_as :aaron
    get :edit, :id => products(:product_00197).permalink
    assert_response :success
  end

  def test_should_update_product
    login_as :aaron
    put :update, :id => products(:product_00197).permalink, :product => { }
    assert_redirected_to product_path(assigns(:product))
  end

  def test_should_destroy_product
    login_as :aaron
    assert_difference('Product.count', -1) do
      delete :destroy, :id => products(:product_00197).permalink
    end

    assert_redirected_to products_path
  end
end
