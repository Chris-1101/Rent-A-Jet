
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(email: "amine@gmail.com", password: "123456")
Jet.create(name: "FK-232", type: "FK", city: "Los Angeles", price_hour: 200, seats: 3, user_id: user.id)
Jet.create(name: "TX-454" , type: "TX" , city: "Dubai", price_hour: 300 , seats: 4, user_id: user.id)
Jet.create(name: "TJ-454" , type: "TJ" , city: "Paris", price_hour: 700 , seats: 7, user_id: user.id)
Jet.create(name: "KW-454" , type: "KW" , city: "New York", price_hour: 500 , seats: 5, user_id: user.id)
Jet.create(name: "WX-454" , type: "WX" , city: "Madrid", price_hour: 400 , seats: 5, user_id: user.id)
