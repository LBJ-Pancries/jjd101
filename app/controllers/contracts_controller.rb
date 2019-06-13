class ContractsController < ApplicationController
  def index
    @contracts = Contract.all
  end

  def show
    @contract = Contract.find_by_friendly_id!(params[:id])
  end

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)
    if @contract.save
      redirect_to contracts_path
    else
      render :new
    end
  end

  def edit
    @contract = Contract.find_by_friendly_id!(params[:id])
  end

  def update
    @contract = Contract.find_by_friendly_id!(params[:id])
    if @contract.update(contract_params)
      redirect_to contract_path, notice: "Update Success"
    else
      render :edit
    end
  end

  def destroy
    @contract = Contract.find_by_friendly_id!(params[:id])
    @contract.destroy
    flash[:alert] = "Contract deleted"
    redirect_to contracts_path
  end

  private

  def contract_params
    params.require(:contract).permit(:title, :party_a, :party_b, :amount, :description)
  end
end
