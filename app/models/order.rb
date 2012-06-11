class Order < ActiveRecord::Base
  belongs_to :shop
  belongs_to :user
  has_many :line_items
  has_many :products, :through => :line_items
end
