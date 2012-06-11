class LineItemsController < ApplicationController
    
  def create
    shop = Shop.find_by_permalink(params[:shop_id])
    product = shop.products.find(params[:product_id])
    current_cart.line_items.create!(product: product)
    redirect_to shop_path(shop), :notice => "item added to cart"
  end
  
  def index
  end
  
  def destroy
    shop = Shop.find_by_permalink(params[:shop_id])
    line_item = LineItem.find(params[:id])
    line_item.destroy
    redirect_to line_items_path
  end
  


end
