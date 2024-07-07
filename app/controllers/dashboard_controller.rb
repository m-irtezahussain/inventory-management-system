class DashboardController < ApplicationController
    before_action :auth

    def index
        @categories = Category.all
        @products = Product.all
    end

    def create
        @categories = Category.find_by(id: params[:category_id])
        if @categories.nil?
          redirect_to dashboard_path, alert: 'Category not found.'
          return
        end
    
        @product = Product.new(product_params)
        if @product.save
          redirect_to dashboard_path, notice: 'Product was successfully created.'
        else
          flash.now[:alert] = 'Failed to create product.'
          render :new
        end
      end
    
    private
    def product_params
        params.permit(:name, :brand, :price, :category_id)
    end
end