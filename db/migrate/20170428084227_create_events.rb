class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title, index: true
      t.text :description
      t.string :venue, index: true
      t.datetime :date, index: true
      t.string :picture, index: true
      t.float :longitude
      t.float :latitude
      t.references :user, foreign_key: true, index: true
      t.references :category, foreign_key: true, index: true

      t.timestamps
    end
  end
end
