class EmissionSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :food_id, :amount, :unit, :source

  belongs_to :food
  belongs_to :student

end
