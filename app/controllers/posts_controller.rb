class PostsController < ApplicationController
  # before_filter :login_required, :except => ['show', 'index']
  resource_controller
  private
    def object
      @object ||= Post.find_by_permalink(params[:id])
    end
    def collection
      if params[:action] == 'archive'
        @collection ||= Post.find(:all, :order => 'date DESC')
      else
        @collection ||= Post.current.find(:all, :order => 'date DESC')
      end
    end
end
