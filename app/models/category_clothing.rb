class CategoryClothing < ApplicationRecord
  belongs_to :clothing
  belongs_to :category
end
