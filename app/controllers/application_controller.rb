class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_cart
  
  def require_login
    if session[:user_id].blank?s
      redirect_to root_url, :notice => "You need to sign in first"
      return false
    end
    @user = User.find(session[:user_id])
  end
  
  def current_cart
     Cart.find(session[:cart_id])
   rescue ActiveRecord::RecordNotFound
     cart = Cart.create
     session[:cart_id] = cart.id
     cart  
   end
  
end
