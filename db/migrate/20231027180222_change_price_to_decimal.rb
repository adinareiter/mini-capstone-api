class ChangePriceToDecimal < ActiveRecord::Migration[7.0]
  def change
    change_column :clothings, :price, "numeric USING CAST (price as numeric)"
    change_column :clothings, :price, :decimal, precision: 9, scale: 2
  end
end
