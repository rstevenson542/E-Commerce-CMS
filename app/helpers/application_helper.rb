module ApplicationHelper
 
  def current_cart
    if session[:cart_id].present?
      Cart.find(session[:cart_id])
    else
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
    end
  end
  
end
