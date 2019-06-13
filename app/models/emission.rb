class Emission < ApplicationRecord
  belongs_to :food
  belongs_to :student
  accepts_nested_attributes_for :food

  validates :unit, :presence => true
  validates :amount, :presence => true
  validates :source, :presence => true


end
