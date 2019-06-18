class Food < ApplicationRecord
  has_many :emissions
  has_many :students, through: :emissions

  validates :name, :presence => true, :uniqueness => true
  # validates :category, :presence => true


  def food_emissions
    self.emissions[0].amount if self.emissions[0]
  end

  def kg_unit_per_lb
    emission = self.emissions.where(:unit => "kg CO2e per lb of food")
    if !emission
      ""
    else
      amounts = []
      emission.map do |e|
        amounts << e.amount
      end
      amounts.join(", ")
    end
  end

  def lbs_per_serving
    emission = self.emissions.where(:unit => "lbs of CO2e per serving").first
    emission ? amount = emission.amount : ""
  end

  def g_per_serving
    emission = self.emissions.where(:unit => "g of CO2e per serving").first
    emission ? amount = emission.amount : ""
  end

  def kg_per_protein
    emission = self.emissions.where(:unit => "kg of CO2 per 50 g of protein").first
    emission ? amount = emission.amount : ""
  end


end
