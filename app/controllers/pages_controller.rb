class PagesController < ApplicationController
  resource_controller
  private
    def object
      @object ||= Page.find_by_permalink(params[:id])
    end
end
