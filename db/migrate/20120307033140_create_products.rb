class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :product_type
      t.string :brand
      t.integer :price
      t.integer :weight
      t.string :SKU
      t.integer :collection_id

      t.timestamps
    end
  end
end
