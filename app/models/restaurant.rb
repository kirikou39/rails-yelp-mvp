class Restaurant < ApplicationRecord
  # ASSOCIATIONS
  # Added manually 
  # Means that if a Restaurant is deleted, its associated reviews will also be deleted
  has_many :reviews, dependent: :destroy
  
  # VALIDATIONS
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { 
    in: %w(chinese italian japanese french belgian),
    message: "%{value} is not a valid category"}

end
