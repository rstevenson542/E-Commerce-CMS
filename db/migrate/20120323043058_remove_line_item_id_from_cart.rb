class RemoveLineItemIdFromCart < ActiveRecord::Migration
  def up
    remove_column :carts, :line_item_id
      end

  def down
    add_column :carts, :line_item_id, :integer
  end
end
