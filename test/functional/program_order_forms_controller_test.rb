require 'test_helper'

class ProgramOrderFormsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:program_order_forms)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_program_order_form
    assert_difference('ProgramOrderForm.count') do
      post :create, :program_order_form => { }
    end

    assert_redirected_to program_order_form_path(assigns(:program_order_form))
  end

  def test_should_show_program_order_form
    get :show, :id => program_order_forms(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => program_order_forms(:one).id
    assert_response :success
  end

  def test_should_update_program_order_form
    put :update, :id => program_order_forms(:one).id, :program_order_form => { }
    assert_redirected_to program_order_form_path(assigns(:program_order_form))
  end

  def test_should_destroy_program_order_form
    assert_difference('ProgramOrderForm.count', -1) do
      delete :destroy, :id => program_order_forms(:one).id
    end

    assert_redirected_to program_order_forms_path
  end
end
