ActiveAdmin.register Product do
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
