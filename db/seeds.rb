
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

jet = Jet.create!(name: "Learjet" , model: "LJ-45" , city: "San Diego International Airport", price_hour: 2400 , seats: 12, user_id: 1)
Review.create!(content: "Very comfortable", rating: 3, user_id: 1, jet_id: jet.id)
Review.create!(content: "There was no caviar", rating: 1, user_id: 3, jet_id: jet.id)
Review.create!(content: "Everything was included", rating: 4, user_id: 1, jet_id: jet.id)
Review.create!(content: "Sat next to a fat guy, seats not wide enough", rating: 1, user_id: 2, jet_id: jet.id)
Review.create!(content: "The spa was not big enough", rating: 3, user_id: 3, jet_id: jet.id)
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "HondaJet" , model: "HA-420" , city: "Long Beach Airport", price_hour: 4700 , seats: 6, user_id: 1)
Review.create!(content: "Very comfortable", rating: 5, user_id: 1, jet_id: jet.id)
Review.create!(content: "There was no caviar", rating: 2, user_id: 3, jet_id: jet.id)
Review.create!(content: "Everything was included", rating: 4, user_id: 1, jet_id: jet.id)
Review.create!(content: "Sat next to a fat guy, seats not wide enough", rating: 1, user_id: 2, jet_id: jet.id)
Review.create!(content: "The spa was not big enough", rating: 3, user_id: 3, jet_id: jet.id)
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "Gulfstream", model: "G650ER", city: "Los Angeles International Airport", price_hour: 6000, seats: 19, user_id: 4)
Review.create!(content: "Very comfortable", rating: 5, user_id: 1, jet_id: jet.id)
Review.create!(content: "There was no caviar", rating: 2, user_id: 3, jet_id: jet.id)
Review.create!(content: "Everything was included", rating: 4, user_id: 1, jet_id: jet.id)
Review.create!(content: "Sat next to a fat guy, seats not wide enough", rating: 1, user_id: 2, jet_id: jet.id)
Review.create!(content: "The spa was not big enough", rating: 3, user_id: 3, jet_id: jet.id)
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "Dassault Falcon", model: "8X", city: "John Wayne Airport", price_hour: 4200, seats: 14, user_id: 2)
Review.create!(content: "Very comfortable", rating: 5, user_id: 1, jet_id: jet.id)
Review.create!(content: "There was no caviar", rating: 2, user_id: 3, jet_id: jet.id)
Review.create!(content: "Everything was included", rating: 4, user_id: 1, jet_id: jet.id)
Review.create!(content: "Sat next to a fat guy, seats not wide enough", rating: 1, user_id: 2, jet_id: jet.id)
Review.create!(content: "The spa was not big enough", rating: 3, user_id: 3, jet_id: jet.id)
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "Beechcraft Hawker" , model: "N796RM" , city: "San Francisco International Airport", price_hour: 5300 , seats: 14, user_id: 3)
Review.create!(content: "Very comfortable", rating: 5, user_id: 1, jet_id: jet.id)
Review.create!(content: "There was no caviar", rating: 2, user_id: 3, jet_id: jet.id)
Review.create!(content: "Everything was included", rating: 4, user_id: 1, jet_id: jet.id)
Review.create!(content: "Sat next to a fat guy, seats not wide enough", rating: 1, user_id: 2, jet_id: jet.id)
Review.create!(content: "The spa was not big enough", rating: 3, user_id: 3, jet_id: jet.id)
puts " created #{jet.name} and it belongs to #{jet.user}"

jet = Jet.create!(name: "Mini Concorde" , model: "MC-X41" , city: "San Jose International Airport", price_hour: 7300 , seats: 20, user_id: 4)
Review.create!(content: "Very comfortable", rating: 5, user_id: 2, jet_id: jet.id)
Review.create!(content: "Incredible service", rating: 5, user_id: 3, jet_id: jet.id)
Review.create!(content: "Champagne was amazing ", rating: 5, user_id: 1, jet_id: jet.id)
Review.create!(content: "Everything was included", rating: 5, user_id: 2, jet_id: jet.id)
Review.create!(content: "Brilliant spa and sauna", rating: 5, user_id: 3, jet_id: jet.id)
puts " created #{jet.name} and it belongs to #{jet.user}"
