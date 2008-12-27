require 'test_helper'

class SaveDatesControllerTest < ActionController::TestCase
  
  should "send an email after order is created" do
    post :create, :save_date => { }
    assert_sent_email
    # assert_sent_email do |email|
    #    email.subject =~ /hi there/ && email.to.include?('none@none.com')
    # end
  end
  
  
  # def test_should_get_index
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:save_dates)
  # end
  # 
  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_save_date
    assert_difference('SaveDate.count') do
      post :create, :save_date => { }
    end
  
    assert_redirected_to save_date_path(assigns(:save_date))
  end
  # 
  # def test_should_show_save_date
  #   get :show, :id => save_dates(:one).id
  #   assert_response :success
  # end
  # 
  # def test_should_get_edit
  #   get :edit, :id => save_dates(:one).id
  #   assert_response :success
  # end
  # 
  # def test_should_update_save_date
  #   put :update, :id => save_dates(:one).id, :save_date => { }
  #   assert_redirected_to save_date_path(assigns(:save_date))
  # end
  # 
  # def test_should_destroy_save_date
  #   assert_difference('SaveDateOrder.count', -1) do
  #     delete :destroy, :id => save_dates(:one).id
  #   end
  # 
  #   assert_redirected_to save_dates_path
  # end
end
