class PagesController < ApplicationController
  before_filter :login_required, :only => [:new, :create, :edit, :update, :destroy]
  layout :determine_layout
  resource_controller
  
  def show
    @page = @object = Page.find_by_permalink(params[:id])
    render :template => '/pages/'+params[:path].join('/') and return if params[:path]
  end
  
  
  private
    def object
      @object ||= Page.find_by_permalink(params[:id])
    end
    
    def determine_layout
      if params[:action] == 'home'
        "home" 
      else
        'application'
      end
    end
    
end
