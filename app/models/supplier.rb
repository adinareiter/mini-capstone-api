class Supplier < ApplicationRecord
  def clothings
    Clothing.where(supplier_id: id)
  end
end
