class ProductController < ApplicationController
  before_action :auth

  def add_product
    # abort(params.inspect)
    @new_product = @current_user.products.new(product_params)
    if @new_product.save
      flash[:success] = "Product Added Successfully!"
      redirect_to dashboard_path
    else
      flash[:error] = "There was an error when attempted to add the data!"
      redirect_to dashboard_path
    end
  end

  def destroy
    @product = @current_user.products.find_by(id: params[:id])
    if @product.destroy
      flash[:success] = "#{@product.name} is no longer in your inventory list!"
      redirect_back(fallback_location: dashboard_path)
    else
      flash[:error] = "#{@product.name} is not deleted. Please try again later."
      redirect_back(fallback_location: dashboard_path)
    end
  end

  private
  def product_params 
    params.permit(:name, :brand, :price, :quantity, :category_id)
  end
end