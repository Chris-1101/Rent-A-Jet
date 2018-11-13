
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

jet = Jet.create!(name: "FK-232", model: "FK", city: "Los Angeles", price_hour: 200, seats: 3, user_id: 2)
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "TX-454" , model: "TX" , city: "Dubai", price_hour: 300 , seats: 4, user_id: 2)
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "TJ-454" , model: "TJ" , city: "Paris", price_hour: 700 , seats: 7, user_id: 3)
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "KW-454" , model: "KW" , city: "New York", price_hour: 500 , seats: 5, user_id: 1)
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "WX-454" , model: "WX" , city: "Madrid", price_hour: 400 , seats: 5, user_id: 4)
rand(5).times do
  Review.create!(content: "rating here...", rating: rand(5), user_id: rand(1..4), jet_id: jet.id)
end
puts " created #{jet.name} and it belongs to #{jet.user}"
