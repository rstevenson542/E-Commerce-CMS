ActiveAdmin.register Product do
  
  form(:html => {:mulipart => true}) do |f|
    f.inputs "Product" do
      f.input :image, :as => :file
      f.input :name
      f.input :description
      f.input :product_type
      f.input :brand
      f.input :price
      f.input :weight
      f.input :SKU
      f.input :collection_id
      f.input :shop_id
    end
    f.buttons
  end

  index do 
    column "Product", :name do |product|
      link_to product.name, [:admin, product]
    end
    column :brand
    column :price, :sortable => :price do |product|
      div :class => "price" do
        number_to_currency product.price
      end
    end
    default_actions
  end
  
  filter :brand, :as => :select, :collection => proc {Product.all.map(&:brand).compact.uniq.sort}
end
