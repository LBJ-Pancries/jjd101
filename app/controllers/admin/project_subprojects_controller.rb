class Admin::ProjectSubprojectsController < ApplicationController
  layout 'admin'

  def index
    @project = Project.find(params[:project_id])
    @subprojects = @project.subprojects
  end

  def new
    @project = Project.find(params[:project_id])
    @subproject = @project.subprojects.new
  end

  def create
    @project = Project.find(params[:project_id])
    @subproject = @project.subprojects.new(subproject_params)
    @subproject.user = current_user
    if @subproject.save
      redirect_to admin_project_subprojects_path(@project)
    else
      render "new"
    end
  end

  def edit
    @project = Project.find(params[:project_id])
    @subproject = @project.subprojects.find(params[:id])
  end

  def update
    @project = Project.find(params[:project_id])
    @subproject = @project.subprojects.find(params[:id])
    if @subproject.update(subproject_params)
      redirect_to admin_project_subprojects_path(@project)
    else
      render "edit"
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @subproject = @project.subprojects.find(params[:id])
    @subproject.destroy
    redirect_to admin_project_subprojects_path(@project)
  end

  protected

  def subproject_params
    params.require(:subproject).permit(:title)
  end
end
