class Food < ApplicationRecord
  has_many :emissions
  has_many :students, through: :emissions

  validates :name, :presence => true, :uniqueness => true
  validates :category, :presence => true

  scope :category, -> (category) {where("category LIKE ?", category)}

  # this scope method should query the food data base to sort all food in descending order based on the unit passed in params by a button. Food without any value for that unit should be listed at the bottom. The button will be in the column heading of each unit.
  # scope :choose_unit -> { joins(:emissions).merge(Emission.by_unit) }

  # scope :unit_desc,

  # def self.unit_desc(unit)
  #   self.joins(:emissions).where('emissions.unit = ?', unit).order(emissions.amount: :desc)
  # end

  def unit_finder(unit_string)
    emission = self.emissions.where(:unit => unit_string)
    amounts = []
    emission.map do |e|
      amounts << e.amount
    end
    amounts.join(", ")
  end
end
