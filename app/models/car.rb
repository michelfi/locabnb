class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :brand, presence: true
  validates :model, presence: true
  validates :address, presence: true
  validates :price_per_day, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
