class Product < ActiveRecord::Base
  belongs_to :collection
  belongs_to :shop
end
