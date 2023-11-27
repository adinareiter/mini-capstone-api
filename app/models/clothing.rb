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

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
  belongs_to :supplier
  has_many :orders

  # def image
  #   Image.where(clothing_id: id)
  # end
  has_many :images

  has_many :category_clothings

  # Using the manual method instead of the shortcut so that I can return just the name

  # has_many :categories, through: :category_clothings

  def categories
    category_clothings.map do |category_clothing|
      category_clothing.category.name
    end
  end
end
