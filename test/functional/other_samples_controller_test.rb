require 'test_helper'

class OtherSamplesControllerTest < ActionController::TestCase
  should "send an email after order is created" do
    post :create, :other_sample => { }
    assert_sent_email do |email|
       email.subject =~ /Other /
    end
  end
  

  # def test_should_get_index
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:other_samples)
  # end
  # 
  # def test_should_get_new
  #   get :new
  #   assert_response :success
  # end
  # 
  # def test_should_create_other_sample
  #   assert_difference('OtherSampleOrder.count') do
  #     post :create, :other_sample => { }
  #   end
  # 
  #   assert_redirected_to other_sample_path(assigns(:other_sample))
  # end
  # 
  # def test_should_show_other_sample
  #   get :show, :id => other_samples(:one).id
  #   assert_response :success
  # end
  # 
  # def test_should_get_edit
  #   get :edit, :id => other_samples(:one).id
  #   assert_response :success
  # end
  # 
  # def test_should_update_other_sample
  #   put :update, :id => other_samples(:one).id, :other_sample => { }
  #   assert_redirected_to other_sample_path(assigns(:other_sample))
  # end
  # 
  # def test_should_destroy_other_sample
  #   assert_difference('OtherSampleOrder.count', -1) do
  #     delete :destroy, :id => other_samples(:one).id
  #   end
  # 
  #   assert_redirected_to other_samples_path
  # end
end
