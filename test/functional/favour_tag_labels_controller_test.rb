require 'test_helper'

class FavourTagLabelsControllerTest < ActionController::TestCase
  should "send an email after order is created" do
    post :create, :favour_tag_label => { }
    assert_sent_email do |email|
       email.subject =~ /Favour Tag /
    end
  end
  
  # def test_should_get_index
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:favour_tag_labels)
  # end
  # 
  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_favour_tag_label
    assert_difference('FavourTagLabel.count') do
      post :create, :favour_tag_label => { }
    end
  
    assert_redirected_to favour_tag_label_path(assigns(:favour_tag_label))
  end
  # 
  # def test_should_show_favour_tag_label
  #   get :show, :id => favour_tag_labels(:one).id
  #   assert_response :success
  # end
  # 
  # def test_should_get_edit
  #   get :edit, :id => favour_tag_labels(:one).id
  #   assert_response :success
  # end
  # 
  # def test_should_update_favour_tag_label
  #   put :update, :id => favour_tag_labels(:one).id, :favour_tag_label => { }
  #   assert_redirected_to favour_tag_label_path(assigns(:favour_tag_label))
  # end
  # 
  # def test_should_destroy_favour_tag_label
  #   assert_difference('FavourTagLabelOrder.count', -1) do
  #     delete :destroy, :id => favour_tag_labels(:one).id
  #   end
  # 
  #   assert_redirected_to favour_tag_labels_path
  # end
end
