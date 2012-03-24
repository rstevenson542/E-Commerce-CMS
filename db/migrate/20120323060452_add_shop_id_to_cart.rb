class AddShopIdToCart < ActiveRecord::Migration
  def change
    add_column :carts, :shop_id, :integer

  end
end
