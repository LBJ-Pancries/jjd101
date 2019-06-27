class Admin::ContractsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

  layout 'admin'

  def index
    @contracts = Contract.all
    @projects = Project.all

    if params[:status].present? && Contract::STATUS.include?(params[:status])
      @contracts = @contracts.by_status(params[:status])
    end

    if params[:project_id].present?
      @contracts = @contracts.by_project(params[:project_id])
    end
  end

  def show
    @contract = Contract.find(params[:id])
  end

  def edit
    @contract = Contract.find(params[:id])
  end

  def update
    @contract = Contract.find(params[:id])
    if @contract.update(contract_params)
      redirect_to admin_contracts_path
    else
      render :edit
    end
  end

  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy
    redirect_to admin_contracts_path
  end

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)
    @contract.user = current_user
    if @contract.save
      redirect_to admin_contracts_path
    else
      render :new
    end
  end

  private

  def contract_params
    params.require(:contract).permit(:title, :party_a, :party_b, :amount, :description, :status, :project_id, :company_id)
  end
end
