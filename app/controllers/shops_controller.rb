class ShopsController < ApplicationController
  
  def index
    @shops = Shop.all    
  end
  
  def show
    @shop = Shop.find_by_permalink(params[:id])
  end
end
