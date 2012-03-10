class AddShopIdToCollection < ActiveRecord::Migration
  def change
    add_column :collections, :shop_id, :integer

  end
end
