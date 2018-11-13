
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.all.where(email: "amine@gmail.com")

puts user
jet = Jet.create!(name: "FK-232", model: "FK", city: "Los Angeles", price_hour: 200, seats: 3, user_id: 1)
puts " created #{jet.name} and it belongs to #{jet.user.email}"
jet = Jet.create!(name: "TX-454" , model: "TX" , city: "Dubai", price_hour: 300 , seats: 4, user_id: 1)
puts " created #{jet.name} and it belongs to #{jet.user.email}"
jet = Jet.create!(name: "TJ-454" , model: "TJ" , city: "Paris", price_hour: 700 , seats: 7, user_id: 1)
puts " created #{jet.name} and it belongs to #{jet.user.email}"
# jet = Jet.create!(name: "KW-454" , model: "KW" , city: "New York", price_hour: 500 , seats: 5, user_id: 1)
# puts " created #{jet.name} and it belongs to #{jet.user.email}"
# jet = Jet.create!(name: "WX-454" , model: "WX" , city: "Madrid", price_hour: 400 , seats: 5, user_id: 1)
# puts " created #{jet.name} and it belongs to #{jet.user.email}"
