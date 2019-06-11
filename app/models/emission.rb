class Emission < ApplicationRecord
  belongs_to :food, required: false
  belongs_to :student, required: false
  accepts_nested_attributes_for :food

  validates :unit, :presence => true
  validates :amount, :presence => true
  validates :source, :presence => true
  validates :food_id, :presence => true

end
