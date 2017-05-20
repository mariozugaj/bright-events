class AddCountersToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :created_events_count, :integer, default: 0
  end
end
