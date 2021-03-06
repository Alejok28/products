class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  # def show
  #   @products = Product.find(params[:id])
  # end

  def new
    @products = Product.new
  end

  def create
    @products = Product.new(product_params)
    if @products.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @products = Product.find(params[:id])
  end

  def update
    @products = Product.find(params[:id])
    if @products.update(product_params)
      redirect_to products_path
      # flash[:notice] = "El producto ha sido modificado exitosamente"
    else
      redirect_to :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end


  private
  def product_params
    params.require(:product).permit(:name, :price, category_ids:[])
  end

end
