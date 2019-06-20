class ContractsController < ApplicationController
  before_action :authenticate_user! , only: [:new, :create]

  def show
    @contract = Contract.find(params[:id])
  end

  def edit
    @project = Project.find(params[:project_id])
    @contract = Contract.find(params[:id])
  end

  def update
    @contract = Contract.find(params[:id])
    if @contract.update(contract_params)
      redirect_to project_path, notice: "Update Success"
    else
      render :edit
    end
  end

  def new
    @project = Project.find(params[:project_id])
    @contract = Contract.new
  end

  def create
    @project = Project.find(params[:project_id])
    @contract = Contract.new(contract_params)
    @contract.project = @project
    @contract.user = current_user

    if @contract.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def destroy
    @contract.destroy
    redirect_to project_contracts_path, alert: "Contract deleted"
  end

  private

  def contract_params
    params.require(:contract).permit(:title, :party_a, :party_b, :amount, :description, :status)
  end
end
