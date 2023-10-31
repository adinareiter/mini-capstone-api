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
    assert_equal ["id", "name", "price", "is_discounted?", "tax", "total", "description", "supplier_id", "supplier", "image", "created_at", "updated_at"], data.keys
  end

  test "create" do
    assert_difference "Clothing.count", 1 do
      post "/clothings.json", params: { name: "test clothing", price: 1 }
    end
  end

  test "update" do
    clothing = Clothing.first
    patch "/clothings/#{clothing.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end

  test "destroy" do
    assert_difference "Clothing.count", -1 do
      delete "/clothings/#{Clothing.first.id}.json"
      assert_response 200
    end
  end

  test "the truth" do
    assert true
  end
end
