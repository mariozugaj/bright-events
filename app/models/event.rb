class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  before_validation :normalize_title
  validates_presence_of :user_id, :title, :venue, :date, :category_id,
                        :description, :picture
  validates_length_of :title, maximum: 100
  validates_length_of :description, maximum: 800
  mount_uploader :picture, ImageUploader
  validate :picture_size

  private

  def normalize_title
    self.title = title.downcase.titleize
  end

  def picture_size
    errors.add(:picture, 'should be less than 5 MB') if picture.size > 5.megabytes
  end
end
