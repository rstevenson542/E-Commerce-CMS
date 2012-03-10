class AddShopIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :shop_id, :integer

  end
end
