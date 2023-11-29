class ChangeProductIdInCartedProducts < ActiveRecord::Migration[7.0]
  def change
    rename_column :carted_products, :product_id, :clothing_id
  end
end
