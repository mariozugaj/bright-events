class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :zxcvbnable

  has_many :events, source: :creator

  validates :name, presence: true
end
