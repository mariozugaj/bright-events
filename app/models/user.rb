class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :zxcvbnable

  has_many :events, source: :creator

  before_create :create_slug

  validates :name, presence: true

  def to_param
    self.slug
  end

  private

  def create_slug
    self.slug = self.name.parameterize
  end
end
