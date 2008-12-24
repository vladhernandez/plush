class ProductsController < ApplicationController
      before_filter :login_required, :except => ['show']
  caches_page :show
  resource_controller

  private
    def object
      @object ||= Product.find_by_permalink(params[:id])
    end
end
