class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @Categories = Category.all
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to product_url @product
  end
  
  def edit
    @product = Product.find(params[:id])
    @Categories = Category.all
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to product_url @product
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to product_url
  end

  private
    def product_params
      params.require(:product).permit(:name, :description, :price :Category_id)
    end
end
