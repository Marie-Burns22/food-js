class Emission < ApplicationRecord
  belongs_to :food
  belongs_to :student

  validates :unit, :presence => true
  validates :amount, :presence => true
  validates :source, :presence => true

  #accepts_nested_attributes_for :food
  scope :unit, -> (unit) {where("unit LIKE ?", unit)}

  def food_attributes=(attributes)
    food = Food.find_or_create_by(attributes)
    self.food = food if food.valid?
  end

end
