class CreateCategoryClothings < ActiveRecord::Migration[7.0]
  def change
    create_table :category_clothings do |t|
      t.integer :clothing_id
      t.integer :category_id

      t.timestamps
    end
  end
end
