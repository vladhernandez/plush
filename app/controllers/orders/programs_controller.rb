class ProgramsController < ApplicationController
  # before_filter :login_required, :except => ['show', 'new', 'create']
  resource_controller
end
