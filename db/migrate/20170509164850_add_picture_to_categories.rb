class AddPictureToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :picture, :string
  end
end
