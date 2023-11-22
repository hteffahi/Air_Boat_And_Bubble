class Boat < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_one_attached :photo


  validates :name, presence: true
  validates :category, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :capacity, numericality: { greater_than: 0 }
end
