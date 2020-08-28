CollectedCard.destroy_all
BusinessCard.destroy_all
User.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# businesscard = BusinessCard.first_or_create(
#     name: "MyCard1",
#     firstname: "Joe",
#     company: "email",
#     email: "joe@test.com",
#     phone: "02340234890",
#     jobtitle: "outdoot labour",
#     website: "www.joes.com",
#     user_id: 1,
#     lastname: "example",
#     streetname: "Kochstraße 40",
#     postalcode: "22301",
#     city: "Berlin"
#   )

# user = User.find_by(email: "ecschulte@gmx.de")



user1 = User.create!(email: "jaber@gmail.com", password: "123456")
puts "user1 created"
user2 = User.create!(email: "jp@gmail.com", password: "1234567")
puts "user2 created"

collectedcard1 = BusinessCard.create!(
   name: "le wagon",
  firstname: "Jaber",
  company: "email",
  email: "jaber@test.com",
  phone: "02340234890",
  jobtitle: "outdoot labour",
  website: "www.joes.com",
   user_id: user1.id,
  lastname: "example",
   streetname: "Kochstraße 40",
   postalcode: "22301",
   city: "Berlin"
 )
 puts "collectedcard1"

     collectedcard2 = BusinessCard.create!(
   name: "le wagon",
  firstname: "JP",
  company: "email",
  email: "jaber@test.com",
  phone: "02340234890",
  jobtitle: "outdoot labour",
      website: "www.joes.com",
       user_id: user2.id,
      lastname: "example",
       streetname: "wegstrasse 40",
       postalcode: "22301",
       city: "Berlin"
     )
     puts "collected card 2"

CollectedCard.create!(
  user_id: user2.id ,
  business_card_id: collectedcard1.id,
)
