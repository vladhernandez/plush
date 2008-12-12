class ProductsController < ApplicationController
  resource_controller
  
  def sample
    @product = Product.find_by_permalink(params[:id])
    if request.post?
      render :text => Mailer.create_sample_request(@product)
    end
    
  end
  
  def order
    @product = Product.find_by_permalink(params[:id])
    if request.post?
      render :text => Mailer.create_order_email(@product)
    end
  end
  
  
  private
    def object
      @object ||= Product.find_by_permalink(params[:id])
    end
end
