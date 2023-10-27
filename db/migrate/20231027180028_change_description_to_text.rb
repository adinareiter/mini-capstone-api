class ChangeDescriptionToText < ActiveRecord::Migration[7.0]
  def change
    change_column :clothings, :description, :text
  end
end
