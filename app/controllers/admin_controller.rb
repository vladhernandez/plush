class AdminController < ApplicationController
  before_filter :login_required
  def index
    @pages = Page.all
    @posts = Post.all
    @invites = Invite.all
    @categories = Category.all
    @products = Product.all
    @users = User.all
  end

end
