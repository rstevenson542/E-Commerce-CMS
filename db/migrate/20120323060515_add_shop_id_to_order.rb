class AddShopIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :shop_id, :integer

  end
end
