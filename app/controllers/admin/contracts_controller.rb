class Admin::ContractsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

  def index
    @contracts = Contract.all
  end

  def show
    @contract = Contract.find_by_friendly_id!(params[:id])
  end

  def edit
    @contract = Contract.find_by_friendly_id!(params[:id])
  end

  def update
    @contract = Contract.find_by_friendly_id!(params[:id])
    if @contract.update(contract_params)
      redirect_to admin_contracts_path
    else
      render :edit
    end
  end

  def destroy
    @contract = Contract.find_by_friendly_id!(params[:id])
    @contract.destroy
    redirect_to admin_contracts_path
  end

  private

  def job_params
    params.require(:contract).permit(:title, :party_a, :party_b, :amount, :description, :status)
  end
end
