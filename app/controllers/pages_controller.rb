class PagesController < ApplicationController
  before_filter :login_required, :only => [:new, :create, :edit, :update, :destroy]
  layout :determine_layout
  resource_controller
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
