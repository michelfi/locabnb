class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :starts_at, presence: true
  validates :ends_at, presence: true
  validate :starts_at_must_be_before_ends_at

  def starts_at_must_be_before_ends_at
    if starts_at && ends_at && starts_at >= ends_at
      errors.add(:starts_at, "Attention : veuillez sélectionner une date de début antérieure à la date de fin !")
    end
  end
end
