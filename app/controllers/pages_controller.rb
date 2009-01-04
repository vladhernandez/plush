class PagesController < ApplicationController
  before_filter :login_required, :only => [:new, :create, :edit, :update, :destroy]
  layout :determine_layout
  resource_controller
  
  def show
    # @object = Page.find(params[:id])
    @object = Page.find_by_permalink(params[:id])
    render :template => '/content/'+params[:path].join('/') and return if params[:path]
  end
  
  
  private
    # def object
    #   @object ||= Page.find_by_permalink(params[:id])
    # end
    
    def determine_layout
      if params[:action] == 'home'
        "home" 
      else
        'application'
      end
    end
    
end
