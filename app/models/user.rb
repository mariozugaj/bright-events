class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :zxcvbnable

  has_many :events, source: :creator
  has_many :attendances, class_name: 'Attendance',
                         foreign_key: 'attendee_id',
                         dependent: :destroy
  has_many :attending_events, through: :attendances, source: :attended_event

  validates :name, presence: true

  def attend(event)
    attendances.create!(attended_event_id: event.id)
  end

  def unattend(event)
    attendances.find_by(attended_event_id: event.id).destroy
  end

  def attending?(event)
    attending_events.include?(event)
  end

  def upcoming_events
    attending_events.where('date_and_time > ?', Time.zone.now)
  end

  def past_attended_events
    attending_events.where('date_and_time < ?', Time.zone.now)
  end

  private

end
