class Food < ApplicationRecord
  has_many :emissions
  has_many :students, through: :emissions

  validates :name, :presence => true
  # validates :category, :presence => true


  def food_emissions
    self.emissions[0].amount if self.emissions[0]
  end

end
