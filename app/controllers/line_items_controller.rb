class LineItemsController < ApplicationController
  
  def create
    if session[:cart_id].present?
      cart = Cart.find(session[:cart_id])
    else 
      cart = Cart.create(:total => 0)
      session[:cart_id] = cart.id
    end
    
    cart.cart_items.create :product_id => params[:product_id]
  end
  
  def destroy
    
  end
  
  def index 
    @line_items = LineItem.all
  end

end
