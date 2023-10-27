class ClothingsController < ApplicationController
  def index
    @clothings = Clothing.all
    render :index
  end

  def show
    @clothing = Clothing.find_by(id: params["id"])
    render :show
  end

  # def create
  #   @clothing = Clothing.new(
  #     name: "boots",
  #     price: 40,
  #     image_url: "image.png",
  #   )
  #   @clothing.save
  #   render :show
  # end

  # def create
  #   @clothing = Clothing.new(
  #     name: params["name"],
  #     price: params["price"],
  #     image_url: params["image_url"],
  #   )
  #   @clothing.save
  #   render :show
  # end

  # def update
  #   @clothing = Clothing.find_by(id: params["id"])
  #   @clothing.update(
  #     name: params["name"] || @clothing.name,
  #     price: params["price"] || @clothing.price,
  #     image_url: params["image_url"] || @clothing.image_url,
  #   )
  #   render :show
  # end

  # def destroy
  #   @clothing = Clothing.find_by(id: params["id"])
  #   @clothing.destroy
  #   render json: { message: "item successfully deleted" }
  # end

  # def blue_sweater
  #   @clothing = Clothing.first
  #   render :show
  # end

  # def slippers
  #   @clothing = Clothing.second
  #   render :show
  # end
end
