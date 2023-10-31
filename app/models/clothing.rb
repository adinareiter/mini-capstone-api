class Clothing < ApplicationRecord
  # validates :name, length: { in: 2..20 }
  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :price, presence: true
  # validates :price, numericality: { greater_than: 0 }
  # validates :description, length: { in: 5..500 }

  def is_discounted?
    if price <= 10
      return true
    else
      return false
    end
  end

  def tax
    tax = price * 0.09
    return tax
  end

  def total
    return tax + price
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  # def image
  #   Image.find_by(id: image_id)
  # end
end
