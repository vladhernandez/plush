class PagesController < ApplicationController
  layout :determine_layout
  resource_controller
  private
    def object
      @object ||= Page.find_by_permalink(params[:id])
    end
    
    def determine_layout
      "home" if @object == Page.root
    end
    
end
