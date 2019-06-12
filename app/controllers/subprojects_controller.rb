class SubprojectsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create]

  def new
    @project = Project.find(params[:project_id])
    @subproject = Subproject.new
  end

  def create
    @project = Project.find(params[:project_id])
    @subproject = Subproject.new(subproject_params)
    @subproject.project = @project
    @subproject.user = current_user

    if @subproject.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  private

  def subproject_params
    params.require(:subproject).permit(:title)
  end
end
