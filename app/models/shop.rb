class Shop < ActiveRecord::Base
  belongs_to :admin_user
  has_many :products
  has_many :collections
  
  def to_param
    permalink
  end
end
