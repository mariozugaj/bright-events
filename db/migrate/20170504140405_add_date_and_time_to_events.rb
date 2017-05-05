class AddDateAndTimeToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :date_and_time, :datetime
    remove_column :events, :date
    add_index :events, :date_and_time
  end
end
