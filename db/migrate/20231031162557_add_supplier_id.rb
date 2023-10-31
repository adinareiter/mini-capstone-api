class AddSupplierId < ActiveRecord::Migration[7.0]
  def change
    add_column :clothings, :supplier_id, :integer
  end
end
