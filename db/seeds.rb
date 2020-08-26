# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BusinessCard.create(
    name: "MyCard1",

    businesscard = BusinessCard.first_or_create(

    firstname: "Joe",
    company: "email",
    email: "joe@test.com",
    phone: "02340234890",
    jobtitle: "outdoot labour",
    website: "www.joes.com",
    user_id: 1,
    lastname: "example"
    )
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

user = User.find_by(email: "ecschulte@gmx.de")

CollectedCard.create(
  user: user,
  business_card: businesscard,
)
