class Student < ApplicationRecord
  has_many :emissions
  has_many :foods, through: :emissions

  validates :name, :email, presence: true, uniqueness: true

  has_secure_password

end
