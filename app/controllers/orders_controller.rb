class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    clothing = current_user.carted_products.where(status: "carted")
    index = 0
    while index < clothings.length
      variable = 
      clothing = Clothing.find_by(id: params[:clothing_id])
      index += 1
    end
  end
    # clothing = Clothing.find_by(id: params[:clothing_id])
    # quantity = params["quantity"]
    subtotal = clothing.price * params[:quantity].to_i
    tax = subtotal * 0.09
    total = subtotal + tax
    # subtotal = clothing.price * quantity
    # tax = subtotal * 13 %
    @order = Order.new(
      user_id: current_user.id,
      clothing_id: clothing.id,
      quantity: params[:quantity],
      subtotal: subtotal,
      tax: tax,
      total: total,
    )
    if @order.save
      render :show  # render json: @order.as_json ?
    else
      render json: { errors: @order.errors.full_message }
    end
  end

  def show
    @order = current_user.orders.find_by(id: params["id"])
    render :show
  end

  def index
    @orders = current_user.orders
    render :index
  end
end
