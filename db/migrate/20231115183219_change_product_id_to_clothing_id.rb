class ChangeProductIdToClothingId < ActiveRecord::Migration[7.0]
  def change
    rename_column :orders, :product_id, :clothing_id
  end
end
