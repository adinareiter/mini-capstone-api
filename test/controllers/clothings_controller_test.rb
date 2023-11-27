require "test_helper"

class ClothingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(name: "Admin", email: "admin@example.com", password: "password", admin: true)
    post "/sessions.json", params: { email: "admin@example.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end
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
    assert_equal ["id", "name", "price", "description", "images", "categories", "is_discounted?", "tax", "total", "supplier_id", "supplier", "created_at", "updated_at"], data.keys
  end

  test "create" do
    assert_difference "Clothing.count", 1 do
      post "/clothings.json", headers: {
                                "Authorization" => "Bearer #{@jwt}",
                              }, params: { price: 1, name: "test clothing", description: "test description", supplier_id: Supplier.first.id }
      data = JSON.parse(response.body)
      assert_response 200
      refute_nil data["id"]
      assert_equal "test clothing", data["name"]
      assert_equal "1.0", data["price"]
      assert_equal "test description", data["description"]
    end
    post "/clothings.json"
    assert_response 401
  end

  test "update" do
    clothing = Clothing.first
    patch "/clothings/#{clothing.id}.json", headers: {
                                              "Authorization" => "Bearer #{@jwt}",
                                            }, params: { name: "Updated name" }
    assert_response 200
    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
    assert_equal clothing.description, data["description"]

    patch "/clothings/#{clothing.id}.json"
    assert_response 401
  end

  test "destroy" do
    assert_difference "Clothing.count", -1 do
      delete "/clothings/#{Clothing.first.id}.json", headers: {
                                                       "Authorization" => "Bearer #{@jwt}",
                                                     }
      assert_response 200
    end
    delete "/clothings/#{Clothing.first.id}.json"
    assert_response 401
  end
end
