class OrderItemsController < ApplicationController
  
  def destroy
     item = OrderItem.find(params[:id])
     item.destroy
     redirect_to root_url
   end

   def create
     if session[:order_id].present?
       order = Order.find(session[:order_id])
     else
       order = Order.create
       session[:order_id] = order.id
     end

     order.order_items.create :product_id => params[:product_id]

     # sum = 0
     # cart.cart_items.each do |item|
     #   sum += item.product.price
     # end
     # cart.total = sum
     # cart.save

     redirect_to root_url, :notice => "Item Added to Cart"
   end
end