class RemoveImageUrlFromClothings < ActiveRecord::Migration[7.0]
  def change
    remove_column :clothings, :image_url
  end
end
