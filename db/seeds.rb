
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

amine = User.create!(first_name: "Amine", last_name: "Sr", email: "amine@gmail.com", password: "1234567");
puts " created user Amine"
chris = User.create!(first_name: "Chris", last_name: "MacBain", email: "chris@gmail.com", password: "1234567");
puts " created user Chris"
james = User.create!(first_name: "James", last_name: "Thorn", email: "nOOb@gmail.com", password: "1234567");
puts " created user James"
natasha = User.create!(first_name: "Natasha", last_name: "Darlington", email: "natasha@gmail.com", password: "1234567");
puts " created user Natasha"

# user = User.all.where(email: "amine@gmail.com")
user = amine

jet = Jet.create!(name: "Gulfstream G650ER", model: "GS", city: "London", price_hour: 3166, seats: 19, user_id: rand(1..4))
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(3..5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "FK-232", model: "FK", city: "Los Angeles", price_hour: 2200, seats: 13, user_id: rand(1..4))
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(3..5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "TX-454" , model: "TX" , city: "Dubai", price_hour: 1300 , seats: 14, user_id: rand(1..4))
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(3..5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "TJ-454" , model: "TJ" , city: "Paris", price_hour: 4700 , seats: 17, user_id: rand(1..4))
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(3..5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "KW-454" , model: "KW" , city: "New York", price_hour: 2500 , seats: 15, user_id: rand(1..4))
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(3..5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "WX-454" , model: "WX" , city: "Madrid", price_hour: 2400 , seats: 15, user_id: rand(1..4))
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(3..5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "Gulfstream G280", model: "FK", city: "Barcelona", price_hour: 3200, seats: 13, user_id: rand(1..4))
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(3..5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "FX-237", model: "FX", city: "Seoul", price_hour: 4100, seats: 12, user_id: rand(1..4))
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(3..5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "JD-348", model: "JD", city: "Tokyo", price_hour: 3400, seats: 13, user_id: rand(1..4))
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(3..5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "GS-450", model: "GS", city: "Shanghai", price_hour: 2100, seats: 21, user_id: rand(1..4))
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(3..5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "HT-234", model: "HT", city: "Netanya", price_hour: 3200, seats: 13, user_id: rand(1..4))
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(3..5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "FK-972", model: "FK", city: "Vienna", price_hour: 4200, seats: 14, user_id: rand(1..4))
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(3..5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"
