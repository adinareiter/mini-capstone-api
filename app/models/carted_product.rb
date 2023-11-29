class CartedProduct < ApplicationRecord
  belongs_to :clothing
  belongs_to :user
  belongs_to :order, optional: true
end
