class Food < ApplicationRecord
  has_many :emissions
  has_many :students, through: :emissions

  validates :name, :presence => true, :uniqueness => true
  # validates :category, :presence => true


  def food_emissions
    self.emissions[0].amount if self.emissions[0]
  end

  def kg_unit_per_lb       #update to 'kg CO2e per lb of food'
    emission = self.emissions.where(:unit => "kg").first
    emission ? amount = emission.amount : "N/A"
  end

  def lbs_per_serving  #update to 'lbs of CO2e per serving'
    emission = self.emissions.where(:unit => "g").first
    emission ? amount = emission.amount : "N/A"
  end

  def g_per_serving  #update to 'g of CO2e per serving'
    emission = self.emissions.where(:unit => "kilograms").first
    emission ? amount = emission.amount : "N/A"
  end

  def kg_per_protein  #update to 'kg of CO2 per 50 g of protein'
    emission = self.emissions.where(:unit => "centigrams").first
    emission ? amount = emission.amount : "N/A"
  end


end
