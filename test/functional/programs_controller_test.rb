require 'test_helper'

class ProgramsControllerTest < ActionController::TestCase
  should "send an email after order is created" do
    post :create, :program => { }
    assert_sent_email do |email|
       email.subject =~ /Program /
    end
  end
  
  
  def test_should_get_index
    login_as :aaron
    get :index
    assert_response :success
    assert_not_nil assigns(:programs)
  end
  
  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_program
    assert_difference('Program.count') do
      post :create, :program => { }
    end
  
    assert_redirected_to program_path(assigns(:program))
  end
  
  def test_should_show_program
    get :show, :id => programs(:one).id
    assert_response :success
  end
  
  def test_should_get_edit
    login_as :aaron
    get :edit, :id => programs(:one).id
    assert_response :success
  end
  
  def test_should_update_program
    login_as :aaron
    put :update, :id => programs(:one).id, :program => { }
    assert_redirected_to program_path(assigns(:program))
  end
  
  def test_should_destroy_program
    login_as :aaron
    assert_difference('Program.count', -1) do
      delete :destroy, :id => programs(:one).id
    end
  
    assert_redirected_to programs_path
  end
end
