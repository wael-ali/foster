class Place < ApplicationRecord
  belongs_to :user

  geocoded_by :address
  after_validation :geocode
  # If you want to be sure that an association is present,
  # you'll need to test whether the associated object itself
  # is present, and not the foreign key used to map the association.
  validates :user, presence: true
  validates :name, presence: true, length: {minimum: 3}
  validates :address, presence: true, length: {minimum: 5}
  validates :description, presence: true, length: {maximum: 200}




end
