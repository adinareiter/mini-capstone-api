class ImagesController < ApplicationController
  def index
    @images = Image.all
    render :index
  end

  def show
    @image = Image.find_by(id: params["id"])
    render :show
  end
end
