class CartsController < ApplicationController
  
  def destroy
    cart = Cart.find(params[:id])
    cart.destroy
    session[:cart_id] = nil
    redirect_to root_url, :notice => "Your cart has been deleted"
  end
end
