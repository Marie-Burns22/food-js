Student.destroy_all

Student.create! [
  {"id":1,"name":"Aurthur","email":"atirte0@geocities.com","password_digest":"W9Q4a0"},
  {"id":2,"name":"Ulrick","email":"utunno1@chicagotribune.com","password_digest":"Lw9Pxvr1wvl"},
  {"id":3,"name":"Sheridan","email":"scollihole2@bing.com","password_digest":"8FiVP8scMt"},
  {"id":4,"name":"Karita","email":"ktiffin3@pbs.org","password_digest":"9Gj1mC08c"},
  {"id":5,"name":"Cliff","email":"cbevens4@fotki.com","password_digest":"heEYW50WaB"},
  {"id":6,"name":"Shandeigh","email":"sliddard5@chronoengine.com","password_digest":"OTEVgAPX8v4"},
  {"id":7,"name":"Aubrey","email":"aaucoate6@dion.ne.jp","password_digest":"jmnR8Bx"},
  {"id":8,"name":"Cyrillus","email":"cshrimptone7@earthlink.net","password_digest":"19xfkz"},
  {"id":9,"name":"Kirbie","email":"ktroni8@blinklist.com","password_digest":"sadnzsEF365l"},
  {"id":10,"name":"Kirstin","email":"kmackaig9@europa.eu","password_digest":"utj5kd"}
]

Food.destroy_all

Food.create! [
  {"id":1,"name":"Oil - Hazelnut","category":"Dairy"},
  {"id":2,"name":"Tofu - Firm","category":"Fruit"},
  {"id":3,"name":"Higashimaru Usukuchi Soy","category":"Meat"},
  {"id":4,"name":"Bacon Strip Precooked","category":"Dairy"},
  {"id":5,"name":"Shichimi Togarashi Peppeers","category":"Egg"},
  {"id":6,"name":"Muskox - French Rack","category":"Vegetable"},
  {"id":7,"name":"Kale - Red","category":"Nuts"},
  {"id":8,"name":"Mushroom - Portebello","category":"Fish"},
  {"id":9,"name":"Cod - Fillets","category":"Fish"},
  {"id":10,"name":"Tray - 16in Rnd Blk","category":"Fruit"},
  {"id":11,"name":"Goldschalger","category":"Fish"},
  {"id":12,"name":"Macaroons - Two Bite Choc","category":"Mixed dish"},
  {"id":13,"name":"Coffee - Irish Cream","category":"Vegetable"},
  {"id":14,"name":"Amaretto","category":"Dairy"},
  {"id":15,"name":"Lemonade - Kiwi, 591 Ml","category":"Legume"},
  {"id":16,"name":"Raisin - Dark","category":"Egg"},
  {"id":17,"name":"Juice - Mango","category":"Legume"},
  {"id":18,"name":"Mayonnaise - Individual Pkg","category":"Dairy"},
  {"id":19,"name":"Juice - Apple, 1.36l","category":"Legume"},
  {"id":20,"name":"Figs","category":"Dairy"}
]


Emission.destroy_all

Emission.create! [
  {"id":1,"unit":"kg CO2e per lb of food","amount":43,"source":"http://bluehost.com","student_id":1,"food_id":1},
{"id":2,"unit":"g of CO2e per serving","amount":20,"source":"https://blogger.com","student_id":4,"food_id":1},
{"id":3,"unit":"kg CO2e per lb of food","amount":87,"source":"https://psu.edu","student_id":10,"food_id":2},
{"id":4,"unit":"kg CO2e per lb of food","amount":15,"source":"https://phpbb.com","student_id":5,"food_id":16},
{"id":5,"unit":"kg CO2e per lb of food","amount":44,"source":"https://stanford.edu","student_id":6,"food_id":6},
{"id":6,"unit":"kg CO2e per lb of food","amount":29,"source":"http://soundcloud.com","student_id":7,"food_id":9},
{"id":7,"unit":"g of CO2e per serving","amount":89,"source":"https://cafepress.com","student_id":2,"food_id":8},
{"id":8,"unit":"lbs of CO2e per serving","amount":88,"source":"http://geocities.com","student_id":3,"food_id":13},
{"id":9,"unit":"kg CO2e per lb of food","amount":88,"source":"https://hostgator.com","student_id":8,"food_id":9},
{"id":10,"unit":"kg CO2e per lb of food","amount":85,"source":"https://barnesandnoble.com","student_id":10,"food_id":7},
{"id":11,"unit":"g of CO2e per serving","amount":87,"source":"http://rakuten.co.jp","student_id":3,"food_id":11},
{"id":12,"unit":"lbs of CO2e per serving","amount":91,"source":"http://dmoz.org","student_id":9,"food_id":1},
{"id":13,"unit":"kg of CO2 per 50 g of protein","amount":93,"source":"http://webeden.co.uk","student_id":6,"food_id":18},
{"id":14,"unit":"kg of CO2 per 50 g of protein","amount":95,"source":"https://mashable.com","student_id":1,"food_id":6},
{"id":15,"unit":"kg CO2e per lb of food","amount":53,"source":"http://kickstarter.com","student_id":8,"food_id":17},
{"id":16,"unit":"g of CO2e per serving","amount":12,"source":"http://deviantart.com","student_id":5,"food_id":11},
{"id":17,"unit":"kg CO2e per lb of food","amount":19,"source":"http://techcrunch.com","student_id":5,"food_id":8},
{"id":18,"unit":"kg of CO2 per 50 g of protein","amount":28,"source":"http://hugedomains.com","student_id":7,"food_id":9},
{"id":19,"unit":"lbs of CO2e per serving","amount":13,"source":"https://edublogs.org","student_id":5,"food_id":2},
{"id":20,"unit":"kg of CO2 per 50 g of protein","amount":48,"source":"https://theguardian.com","student_id":8,"food_id":18},
{"id":21,"unit":"kg of CO2 per 50 g of protein","amount":31,"source":"http://example.com","student_id":8,"food_id":12},
{"id":22,"unit":"kg CO2e per lb of food","amount":15,"source":"https://reddit.com","student_id":1,"food_id":8},
{"id":23,"unit":"lbs of CO2e per serving","amount":11,"source":"http://booking.com","student_id":9,"food_id":10},
{"id":24,"unit":"g of CO2e per serving","amount":95,"source":"https://geocities.jp","student_id":10,"food_id":13},
{"id":25,"unit":"kg CO2e per lb of food","amount":28,"source":"http://altervista.org","student_id":3,"food_id":17},
{"id":26,"unit":"kg CO2e per lb of food","amount":32,"source":"https://state.tx.us","student_id":5,"food_id":20},
{"id":27,"unit":"kg of CO2 per 50 g of protein","amount":92,"source":"http://adobe.com","student_id":9,"food_id":17},
{"id":28,"unit":"kg of CO2 per 50 g of protein","amount":31,"source":"http://phoca.cz","student_id":7,"food_id":7},
{"id":29,"unit":"kg CO2e per lb of food","amount":7,"source":"http://sciencedaily.com","student_id":5,"food_id":16},
{"id":30,"unit":"lbs of CO2e per serving","amount":21,"source":"http://yahoo.co.jp","student_id":9,"food_id":3}]






# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do
#   student = Student.new
#
#   student.name = Faker::Name.unique.first_name
#   student.email = Faker::Internet.email
#   student.password = Faker::Internet.password
#
#   student.save!
# end

# 20.times do
#   food = Food.new
#
#   food.name = Faker::Food.ingredient
#   food.category = Faker::Restaurant.type
#
#   food.save!
# end
#
# 25.times do
#   emission = Emission.new
#
#   emission.student_id = Faker::Number.between(1, 10)
#   emission.food_id = Faker::Number.between(1, 20)
#   emission.amount = Faker::Number.between(1, 1000)
#   emission.unit = Faker::Measurement.metric_weight("all")
#   emission.source = Faker::Internet.url
#
#   emission.save
# end
