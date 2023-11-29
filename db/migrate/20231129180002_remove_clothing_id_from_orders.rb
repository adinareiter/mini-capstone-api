class RemoveClothingIdFromOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :clothing_id
    remove_column :orders, :quantity
  end
end
