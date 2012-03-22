class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  def current_user
    User.find(session[:user_id])
  end
  
  private 
    
      def current_cart 
        Cart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
        cart = Cart.create
        session[:cart_id] = cart.id
        cart
      end
end
