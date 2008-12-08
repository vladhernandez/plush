class CategoriesController < ApplicationController
  resource_controller
  private
    def object
      @object ||= Category.find_by_permalink(params[:id])
    end
  
end
