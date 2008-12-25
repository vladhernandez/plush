class CategoriesController < ApplicationController
  # before_filter :login_required, :only => :admin_actions
  caches_page :show  
  resource_controller
  private
    def object
      @object ||= Category.find_by_permalink(params[:id])
    end
  
end
