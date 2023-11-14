class Supplier < ApplicationRecord
  has_many :clothings
  # def clothings
  #   Clothing.where(supplier_id: id)
  # end
end
