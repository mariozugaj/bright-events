class AddAttendancesCountToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :attendees_count, :integer, default: 0
  end
end
