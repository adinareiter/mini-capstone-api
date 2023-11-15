class ClothingsController < ApplicationController
  def index
    pp current_user
    @clothings = Clothing.all
    render :index
  end

  def show
    @clothing = Clothing.find_by(id: params["id"])
    render :show
  end

  def create
    @clothing = Clothing.new(
      name: "boots",
      price: 40,
    )
    @clothing.save
    render :show
  end

  def create
    @clothing = Clothing.new(
      supplier_id: params["supplier_id"],
      name: params["name"],
      price: params["price"],
      description: params["description"],
    )
    @clothing.save
    if @clothing.valid?
      render :show
    else
      render json: { errors: @clothing.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @clothing = Clothing.find_by(id: params["id"])
    @clothing.update(
      supplier_id: params["supplier_id"] || @clothing.supplier_id,
      name: params["name"] || @clothing.name,
      price: params["price"] || @clothing.price,
    )
    if @clothing.valid?
      render :show
    else
      render json: { errors: @clothing.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @clothing = Clothing.find_by(id: params["id"])
    @clothing.destroy
    render json: { message: "item successfully deleted" }
  end

  # def blue_sweater
  #   @clothing = Clothing.first
  #   render :show
  # end

  # def slippers
  #   @clothing = Clothing.second
  #   render :show
  # end
end
