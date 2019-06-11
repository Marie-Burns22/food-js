class Student < ApplicationRecord
  has_many :emissions
  has_many :foods, through: :emissions

  has_secure_password
  validates :name, :email, :presence => true

end
