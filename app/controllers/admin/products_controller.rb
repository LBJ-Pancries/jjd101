class Admin::ProductsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create]
  before_action :require_is_admin

  layout 'admin'

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_product_path(@product)
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all.map{ |c| [c.name, c.id] }
  end

  def update
    @product = Product.find(params[:id])
    @product.category_id = params[:category_id]
    if @product.update(product_params)
      redirect_to admin_products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:alert] = "Product deleted"
    redirect_to admin_products_path
  end

  private
  
  def product_params
    params.require(:product).permit(:title, :code, :description, :quantity, :price, :image, :category_id)
  end
end
