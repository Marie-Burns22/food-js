# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  student = Student.new

  student.name = Faker::Name.unique.first_name
  student.email = Faker::Internet.email
  student.password = Faker::Internet.password

  student.save!
end

20.times do
  food = Food.new

  food.name = Faker::Food.ingredient
  food.category = Faker::Restaurant.type

  food.save!
end

25.times do
  emission = Emission.new

  emission.student_id = Faker::Number.between(1, 10)
  emission.food_id = Faker::Number.between(1, 20)
  emission.amount = Faker::Number.between(1, 1000)
  emission.unit = Faker::Measurement.metric_weight("all")
  emission.source = Faker::Internet.url

  emission.save
end
