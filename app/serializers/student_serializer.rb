class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name

   has_many :emissions
  has_many :foods, through: :emissions
end
