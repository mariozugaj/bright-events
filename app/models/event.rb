class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  belongs_to :category, class_name: 'Category', foreign_key: 'category_id'

  before_create :create_slug
  before_validation :normalize_title

  validates_presence_of :user_id, :title, :venue, :date, :category_id,
                        :description, :picture

  validates_length_of :title, :venue, maximum: 140
  validates_length_of :description, maximum: 1500

  mount_uploader :picture, ImageUploader
  validate :picture_size, :picture_dimensions

  def to_param
    self.slug
  end

  private

  def create_slug
    self.slug = self.title.parameterize
  end

  def normalize_title
    self.title = title.downcase.titleize
  end

  def picture_size
    errors.add(:picture, 'should be less than 5 MB') if picture.size > 5.megabytes
  end

  def picture_dimensions
    image = MiniMagick::Image.open(picture.path)
    if image[:width] < 2160 && image[:height] < 1080
      errors.add :picture, 'should be at least 2160px x 1080px'
    end
  end
end
