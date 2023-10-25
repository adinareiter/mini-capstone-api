class ClothingsController < ApplicationController
  def index
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
      image_url: "image.png",
    )
    @clothing.save
    render :show
  end

  def create
    @clothing = Clothing.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
    )
    @clothing.save
    render :show
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
