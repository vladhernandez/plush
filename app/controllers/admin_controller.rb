class AdminController < ApplicationController
  # before_filter :login_required
  def index
    @pages = Page.all
    @posts = Post.all
    @invites = Invite.all
    @categories = Category.all
    @products = Product.all
    @users = User.all
  end
  
  def test_email
    @email = Mailer.deliver_test_email
    render :text => @email
  end

end
