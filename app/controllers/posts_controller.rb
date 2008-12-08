class PostsController < ApplicationController
  resource_controller
  private
    def object
      @object ||= Post.find_by_permalink(params[:id])
    end
end
