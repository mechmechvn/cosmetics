class ProductsController < ApplicationController

  def index
    @products = Product.all
    @brands = Brand.all
    @categories = Category.all
  end

  def new
    @product = Product.new
    @brands = Brand.all
    @categories = Category.all
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = 1
    binding.pry
    if @product.save
      uploader = ImageUpLoader.new
      uploader.store!(params[:image])
      redirect_to products_path
    else
      @brands = Brand.all
      @categories = Category.all
      render 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @brands = Brand.all
    @categories = Category.all
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @products.destroy
    redirect_to products_path
  end


  private
  def product_params
    params.require(:product).permit(:name, :brand_id, :category_id, :description, :price, :sale_price)
  end

end
