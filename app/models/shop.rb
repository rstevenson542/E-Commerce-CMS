class Shop < ActiveRecord::Base
  belongs_to :admin_user
  has_many :products
  has_many :collections
  has_many :line_items
  has_many :carts
  has_many :orders
  has_many :users
  
  def to_param
    permalink
  end
end
