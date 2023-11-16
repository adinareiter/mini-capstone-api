class ImagesController < ApplicationController
  def index
    @images = Image.all
    render :index
  end

  def show
    @image = Image.find_by(id: params["id"])
    render :show
  end

  def create
    @image = Image.new(
      url: params["url"],
      clothing_id: params["clothing_id"],
    )
    @image.save
    if @image.valid?
      render :show
    else
      render json: { error: @image.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
