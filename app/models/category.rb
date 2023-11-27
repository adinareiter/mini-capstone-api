class Category < ApplicationRecord
  has_many :category_clothings
  has_many :clothings, through: :category_clothings

  # def clothings
  #   category_clothings.map do |category_clothing|
  #     category_clothing.clothing
  #   end
  # end
end
