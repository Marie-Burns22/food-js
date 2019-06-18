class Food < ApplicationRecord
  has_many :emissions
  has_many :students, through: :emissions

  validates :name, :presence => true, :uniqueness => true
  # validates :category, :presence => true

  def unit_finder(unit_string)
    emission = self.emissions.where(:unit => unit_string)
    amounts = []
    emission.map do |e|
      amounts << e.amount
    end
    amounts.join(", ")
  end
end
