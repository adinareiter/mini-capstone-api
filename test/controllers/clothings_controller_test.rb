require "test_helper"

class ClothingsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/clothings.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Clothing.count, data.length
  end

  test "show" do
    get "/clothings/#{Clothing.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "image_url", "created_at", "updated_at"], data.keys
  end

  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json", params: { name: "test product", price: 1, image_url: "image.jpg", description: "test description" }
    end
  end

  # test "the truth" do
  #   assert true
  # end
end
