module ApplicationHelper
  def shopping_cart
    @order = find_order_from_session
    if @order.nil?
      @order = create_new_order
    end
  end
  
  def find_order_from_session
    @order = Order.find_by_id(session[:order_id])
  end
  
  def create_new_order
    new_order = Order.create
    session[:order_id] = new_order.id
    return new_order
  end
end
