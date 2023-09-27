class User < ApplicationRecord
  has_many :cars, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
