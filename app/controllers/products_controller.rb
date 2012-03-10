class ProductsController < ApplicationController
  def show
    shop = Shop.find_by_permalink(params[:shop_id])
    @product = shop.products.find(params[:id])
  end  
end