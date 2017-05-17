class Attendance < ApplicationRecord
  belongs_to :attendee, class_name: 'User'
  belongs_to :attending_event, class_name: 'Event'

  validates :attendee_id, presence: true
  validates :attending_event_id, presence: true
  validate :future_event

  private

  def future_event
    errors.add :attending_event, 'can\'t be past event!' if attending_event.date_and_time < Time.zone.now
  end
end
