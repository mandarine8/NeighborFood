class Dish < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  has_many :bookings
  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [ :name],
    using: {
      tsearch: { prefix: true }
    }
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
