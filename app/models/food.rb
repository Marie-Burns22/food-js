class Food < ApplicationRecord
  has_many :emissions
  has_many :students, through: :emissions

  validates :name, :presence => true
  # validates :category, :presence => true


  def food_emissions
    self.emissions[0].amount if self.emissions[0]
  end
#
# #   def unit_g_amount
#     self.emissions.amount where(self.emissions.unit: "g")
#   end

end

# possible emission units
# kg CO2e per lb of food
# lbs of CO2e per serving
# g of CO2e per serving
# kg of CO2 per 50 g of protein
