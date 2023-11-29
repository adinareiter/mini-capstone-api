class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      clothing_id: params[:clothing_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: nil,
    )
    if @carted_product.valid?
      render :show
    else
      render json: { errors: @carted_product.errors.full_messages }
    end
  end

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render :index
  end
end
