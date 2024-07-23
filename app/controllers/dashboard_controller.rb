class DashboardController < ApplicationController
    before_action :auth

    def index
        @categories = Category.where(admin_id: @current_user.id).all
        @products = Product.new
        @my_products = @current_user.products.limit(5).order(quantity: :desc)
    end

    
  
end