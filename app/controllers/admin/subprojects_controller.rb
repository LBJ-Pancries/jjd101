class Admin::SubprojectsController < ApplicationController
  layout 'admin'
  def index
    @subprojects = Subproject.all
  end
end
