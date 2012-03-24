class User < ActiveRecord::Base
  has_secure_password
  has_many :carts
  belongs_to :shop
end
