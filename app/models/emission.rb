class Emission < ApplicationRecord
  belongs_to :food
  belongs_to :student

  validates :unit, :presence => true
  validates :amount, :presence => true
  validates :source, :presence => true

  #accepts_nested_attributes_for :food

  scope :kg_unit, -> { where(unit: "kg CO2e per lb of food") }
  scope :lb_unit, -> { where(unit: "lbs of CO2e per serving") }
  scope :g_unit, -> { where(unit: "g of CO2e per serving")}
  scope :kg_protein_unit, -> { where(unit: "kg of CO2 per 50 g of protein")}

  scope :category, -> (category) {where("food.category LIKE ?", category)}
  scope :food, -> (food) {where("food LIKE ?", food)}

  def food_attributes=(attributes)
    food = Food.find_or_create_by(attributes)
    self.food = food if food.valid?
  end

end
