class Dish < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
  validates :price, presence: true, uniqueness: true
end
