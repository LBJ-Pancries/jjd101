class Admin::CompaniesController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
     if @company.update(company_params)
       redirect_to companies_path, notice: "Update Success"
     else
       render :edit
     end
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    flash[:alert] = "Company deleted"
    redirect_to companies_path
  end

  private

  def company_params
    params.require(:company).permit(:title, :linkman, :contact_number, :description)
  end
end
