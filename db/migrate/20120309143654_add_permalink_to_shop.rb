class AddPermalinkToShop < ActiveRecord::Migration
  def change
    add_column :shops, :permalink, :string

  end
end
