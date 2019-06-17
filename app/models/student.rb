class Student < ApplicationRecord
  has_many :emissions
  has_many :foods, through: :emissions

  validates :name, :email, presence: true, uniqueness: true

  has_secure_password

  def self.from_omniauth(auth)
    self.find_or_create_by(email: auth[:info][:email]) do |s|
      s.name = auth[:info][:name]
      s.password = SecureRandom.hex
    end
  end

end
