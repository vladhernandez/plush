require 'test_helper'

class OtherSampleOrdersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:other_sample_orders)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_other_sample_order
    assert_difference('OtherSampleOrder.count') do
      post :create, :other_sample_order => { }
    end

    assert_redirected_to other_sample_order_path(assigns(:other_sample_order))
  end

  def test_should_show_other_sample_order
    get :show, :id => other_sample_orders(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => other_sample_orders(:one).id
    assert_response :success
  end

  def test_should_update_other_sample_order
    put :update, :id => other_sample_orders(:one).id, :other_sample_order => { }
    assert_redirected_to other_sample_order_path(assigns(:other_sample_order))
  end

  def test_should_destroy_other_sample_order
    assert_difference('OtherSampleOrder.count', -1) do
      delete :destroy, :id => other_sample_orders(:one).id
    end

    assert_redirected_to other_sample_orders_path
  end
end
