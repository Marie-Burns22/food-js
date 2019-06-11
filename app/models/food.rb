class Food < ApplicationRecord
  has_many :emissions
  has_many :students, through: :emissions

  validates :name, :presence => true
  validates :category, :presence => true
end
