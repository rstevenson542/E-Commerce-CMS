class Cart < ActiveRecord::Base
  has_many :line_items
  belongs_to :user
  
  def total 
    line_items.inject(0) do |total, item|
      total + item.product.price
    end
    
      sum = 0
      line_items.each do |item|
        sum += item.product.price
      end
      sum
  end
end
