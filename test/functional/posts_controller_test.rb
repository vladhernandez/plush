require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  
  should "show the top 5 blog posts on the 'blog' page and an archive link" do
    get 'index'
    assert_response :success
    assert_template 'index'
    assert_not_nil assigns(:posts)
    assert_equal assigns(:posts).size, 5
  end
  
  # should "show all the blog posts on the 'archive' page" do
  #   get 'archive'
  #   assert_response :success
  #   assert_template 'index'
  #   assert_not_nil assigns(:posts)
  #   assert_equal assigns(:posts).size, 6
  # end
  
  
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  def test_should_get_new
    login_as :aaron
    get :new
    assert_response :success
  end

  def test_should_create_post
    login_as :aaron
    assert_difference('Post.count') do
      post :create, :post => { }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  def test_should_show_post
    login_as :aaron
    get :show, :id => posts(:one).permalink
    assert_response :success
  end

  def test_should_get_edit
    login_as :aaron
    get :edit, :id => posts(:one).permalink
    assert_response :success
  end

  def test_should_update_post
    login_as :aaron
    put :update, :id => posts(:one).permalink, :post => { }
    assert_redirected_to post_path(assigns(:post))
  end

  def test_should_destroy_post
    login_as :aaron
    assert_difference('Post.count', -1) do
      delete :destroy, :id => posts(:one).permalink
    end

    assert_redirected_to posts_path
  end
end
