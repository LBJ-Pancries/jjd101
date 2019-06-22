class ContractsController < ApplicationController

  def index
    @contracts = Contract.all
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
      redirect_to contracts_path, notice: "Update Success"
    else
      render :edit
    end
  end

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)
    @contract.user = current_user
    if @contract.save
      redirect_to contracts_path
    else
      render :new
    end
  end

  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy
    redirect_to contracts_path, alert: "Contract deleted"
  end

  private

  def contract_params
    params.require(:contract).permit(:title, :party_a, :party_b, :amount, :paid, :unpaid, :linkman, :contact_number, :description, :status, :project_id)
  end
end
