class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :dishes
  has_many :booked_dishes, through: :bookings, source: :dish

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, uniqueness: true
end
