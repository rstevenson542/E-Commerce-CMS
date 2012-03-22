class Product < ActiveRecord::Base
  belongs_to :collection
  belongs_to :shop
  has_many :order_items
  has_attached_file :image, :styles => { :thumb => '185x185#', 
                                         :medium => '200x200#',
                                         :large => '370x370#'}
                                      
  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
end
