class ChangePriceToDecimal < ActiveRecord::Migration[7.0]
  def change
    change_column :clothings, :price, :decimal
  end
end
