class Admin::ProductsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create]
  before_action :require_is_admin

  layout 'admin'

  def index
    @products = Product.all
  end

  def show
    @category = Category.find(params[:id])
    @product = Product.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @product = Product.new
  end

  def create
    @category = Category.find(params[:category_id])
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_category_path(@category)
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
  private
  def product_params
    params.require(:product).permit(:title, :code, :description, :quantity, :price, :image, :category_id)
  end
end
