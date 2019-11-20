class Dish < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  has_many :bookings

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
