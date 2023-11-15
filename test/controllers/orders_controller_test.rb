require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  setup do
    @user = User.create(name: "Test", email: "test@test.com", password: "password")
    @order = Order.create(user_id: @user.id, clothing_id: Clothing.first.id, quantity: 10)
    post "/sessions.json", params: { email: "test@test.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end

  test "index" do
    get "/orders.json", headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200
  end

  test "create" do
    assert_difference "Order.count", 1 do
      post "/orders.json",
        params: { clothing_id: Clothing.first.id, quantity: 10 },
        headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
  end

  test "show" do
    get "/orders/#{@order.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "user", "clothing", "user_id", "clothing_id", "quantity", "subtotal", "tax", "total", "created_at", "updated_at"], data.keys
  end
end
