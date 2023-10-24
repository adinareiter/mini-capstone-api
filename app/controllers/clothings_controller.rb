class ClothingsController < ApplicationController
  def all_clothings
    @clothings = Clothing.all
    render :index
  end

  def blue_sweater
    @clothing = Clothing.first
    render :show
  end

  def slippers
    @clothing = Clothing.second
    render :show
  end
end
