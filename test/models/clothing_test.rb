require "test_helper"

class ClothingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "is_discounted?" do
    clothing = Clothing.new(price: 11)
    assert_equal false, clothing.is_discounted?

    clothing = Clothing.new(price: 1)
    assert_equal true, clothing.is_discounted?
  end

  test "tax" do
    clothing = Clothing.new(price: 100)
    assert_in_delta 9, clothing.tax
  end

  test "total" do
    clothing = Clothing.new(price: 100)
    assert_in_delta 109, clothing.total
  end
end
