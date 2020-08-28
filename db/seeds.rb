# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

businesscard = BusinessCard.first_or_create(
    name: "MyCard1",
    firstname: "Joe",
    company: "email",
    email: "joe@test.com",
    phone: "02340234890",
    jobtitle: "outdoot labour",
    website: "www.joes.com",
    user_id: 1,
    lastname: "example",
    streetname: "Kochstraße 40",
    postalcode: "22301",
    city: "Berlin"
  )


BusinessCard.create(
    name: "MyCard2",
    firstname: "Tom",
    company: "email",
    email: "joe@test.com",
    phone: "02340234890",
    jobtitle: "outdoot labour",
    website: "www.joes.com",
    user_id: 1,
    lastname: "example"
)

BusinessCard.create(
    name: "MyCard3",
    firstname: "Jones",
    company: "email",
    email: "joe@test.com",
    phone: "02340234890",
    jobtitle: "outdoot labour",
    website: "www.joes.com",
    user_id: 1,
    lastname: "example"
)

BusinessCard.create(
    name: "MyCard4",
    firstname: "Tom",
    company: "email",
    email: "joe@test.com",
    phone: "02340234890",
    jobtitle: "outdoot labour",
    website: "www.joes.com",
    user_id: 1,
    lastname: "example"
)

BusinessCard.create(
    name: "MyCard5",
    firstname: "Tom",
    company: "email",
    email: "joe@test.com",
    phone: "02340234890",
    jobtitle: "outdoot labour",
    website: "www.joes.com",
    user_id: 1,
    lastname: "example"
)

user = User.find_by(email: "ecschulte@gmx.de")


CollectedCard.create!(
  user: user,
  business_card: businesscard
)
