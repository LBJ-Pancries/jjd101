class SubprojectsController < ApplicationController

  before_action :authenticate_user!, :only => [:new, :create, :edit, :update]

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

  def show
    @project = Project.find(params[:project_id])
    @subproject = Subproject.find(params[:id])
  end

  def edit
    @project = Project.find(params[:project_id])
    @subproject = Subproject.find(params[:id])
  end

  def update
    @project = Project.find(params[:project_id])
    @subproject = Subproject.find(params[:id])
    if @subproject.update(subproject_params)
      redirect_to project_path(@project), notice: "Update Success"
    else
      render :edit
    end
  end

  private

  def subproject_params
    params.require(:subproject).permit(:title)
  end
end
