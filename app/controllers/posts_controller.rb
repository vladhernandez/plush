class PostsController < ApplicationController
  # before_filter :login_required, :except => ['show', 'index']
  resource_controller
  private
    def object
      @object ||= Post.find_by_permalink(params[:id])
    end
    def collection
      @collection ||= Post.find(:all, :order => 'created_at DESC')
    end
end
