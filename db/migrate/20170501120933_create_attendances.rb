class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.belongs_to :attended_event, class_name: 'Event', index: true
      t.belongs_to :attendee, class_name: 'User', index: true

      t.timestamps
    end
  end
end
