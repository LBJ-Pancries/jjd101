class Admin::ProjectContractsController < ApplicationController
  layout 'admin'

  def index
    @project = Project.find(params[:project_id])
    @contracts = @project.contracts.includes(:subproject).order("id DESC")
  end

  def destroy
    @contract = @project.contracts.find(params[:id])
    @contract.destroy
    redirect_to admin_project_contracts_path(@project)
  end

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)
    @contract.user = current_user
    if @contract.save
      redirect_to admin_project_contracts_path(@project)
    else
      render :new
    end
  end

  protected

  def contract_params
    params.require(:contract).permit(:status, :subprojec_id, :title, :party_a, :party_b, :amount, :description, :company_id)
  end
end
