class InvitesController < ApplicationController
  resource_controller
  private
    def object
      @object ||= Invite.find_by_permalink(params[:id])
    end
end
