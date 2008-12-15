class ProductsController < ApplicationController
  resource_controller

  private
    def object
      @object ||= Product.find_by_permalink(params[:id])
    end
end
