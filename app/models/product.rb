class Product < ActiveRecord::Base
  belongs_to :collection
  belongs_to :shop
  has_many :line_items
  
  has_attached_file :image, :styles => { :thumb => '30x30#', 
                                         :medium => '200x200#',
                                         :large => '370x370#'}
                                      
  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
  
  # before_destroy :ensure_not_referenced_by_any_line_item
  
  private 
  
    # def ensure_not_referenced_by_any_line_item
    #       if line_items.empty?
    #         return true
    #       else
    #         errors.add(:base, 'Line Items Present')
    #         return false
    #       end
    #     end
end
