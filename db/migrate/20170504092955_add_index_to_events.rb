class AddIndexToEvents < ActiveRecord::Migration[5.0]
  def change
    add_index :events, [:longitude, :latitude]
  end
end
