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



jaber = User.create!(email: "jaber@example.com", password: "123456")
puts "user1 created"
jp = User.create!(email: "jp@example.com", password: "1234567")
puts "user2 created"
ecschulte = User.create!(email: "ecschulte@gmx.com", password: "123456")
puts "user3 created"

collectedcard1 = BusinessCard.create!(
  name: "Student Card",
  firstname: "Jean-Pierre",
  company: "Le Wagon",
  email: "jp@example.com",
  phone: "+49 171 567755",
  jobtitle: "Web Developer",
  website: "www.lewagon.com/berlin",
  user_id: jp.id,
  lastname: "Liberte",
  streetname: "Kochstraße 40",
  postalcode: "1654",
  city: "Berlin"
 )
 puts "Businesscard of JP"

collectedcard2 = BusinessCard.create!(
  name: "Event Card",
  firstname: "Jaber",
  company: "Google",
  email: "jaber@google.com",
  phone: "+49 173 746 2234",
  jobtitle: "Junior Developer",
  website: "www.google.com",
  user_id: jaber.id,
  lastname: "Al Adawi",
  streetname: "Bondstreet 10",
  postalcode: "6556",
  city: "Dublin"
  )
  puts "Businesscard of Jaber"

collectedcard3 = BusinessCard.create!(
  name: "Company Card",
  firstname: "Eduard",
  company: "BCG",
  email: "ecschulte@gmx.de",
  phone: "+49 173 645 2234",
  jobtitle: "Junior Consultant",
  website: "www.bcg.com",
  user_id: ecschulte.id,
  lastname: "Schulte",
  streetname: "Anklamer 18",
  postalcode: "1230",
  city: "Berlin"
  )
  puts "Businesscard of Eduard"


CollectedCard.create!(
  user_id: jp.id ,
  business_card_id: collectedcard2.id,
)

# CollectedCard.create!(
#   user_id: user1.id ,
#   business_card_id: collectedcard2.id,
# )

# CollectedCard.create!(
#   user_id: user1.id ,
#   business_card_id: collectedcard3.id,
# )
