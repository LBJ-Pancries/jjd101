class ContractsController < ApplicationController
  before_action :find_project

  def new
    @contract = Contract.new
  end

  def create

    @contract = @project.contracts.new(contract_params)
    @contract.subproject = @project.subprojects.find( params[:contract][:subproject_id] )
    @contract.status = "confirmed"
    @contract.user = current_user

    if @contract.save
      redirect_to project_contract_path(@project, @contract)
    else
      render "new"
    end
  end

  def show
    @contract = @project.contracts.find(params[:id])
  end

  protected

  def contract_params
    params.require(:contract).permit(:status, :subprojec_id, :title, :party_a, :party_b, :amount, :description, :company_id)
  end

  def find_project
    @project = Project.find(params[:project_id])
  end

end
