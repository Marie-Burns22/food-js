class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :category

  has_many :emissions
  has_many :students, through: :emissions

end
