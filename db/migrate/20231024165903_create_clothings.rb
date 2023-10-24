class CreateClothings < ActiveRecord::Migration[7.0]
  def change
    create_table :clothings do |t|
      t.string :name
      t.integer :price
      t.integer :quantity
      t.string :image_url

      t.timestamps
    end
  end
end
