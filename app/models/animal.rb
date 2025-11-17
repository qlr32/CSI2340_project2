class Animal < ApplicationRecord
  validates :name, presence: true
  validates :species, presence: true
  validates :breed, presence: true
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :intake_date, presence: true
end