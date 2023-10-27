class AddStockToClothings < ActiveRecord::Migration[7.0]
  def change
    add_column :clothings, :stock, :integer
  end
end
