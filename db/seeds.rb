# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts '🌱 ...'

Pledge.destroy_all
Campaign.destroy_all

User.create!(
  email: 'mangama@icloud.com',
  first_name: 'Marthe',
  last_name: 'Angama',
  username: 'maetel',
  phone_number: 1234567890,
  password: 'Dimanche123',
  is_admin: true,
)

# 10.times do
#   name = Faker::Commerce.department
#   description = Faker::Quotes::Shakespeare.hamlet_quote

#   Campaign.create!(
#     name: name,
#     description: description,
#     user_id: 1
#   )
# end

name = Faker::Commerce.department
description = Faker::Quotes::Shakespeare.hamlet_quote

Campaign.create!(
  name: name,
  description: description,
  user_id: 1
)

10.times do
  amount = Faker::Commerce.price

  Pledge.create!(
    amount: amount,
    campaign_id: Campaign.ids.sample,
    user_id: 1
  )
end

puts 'Seeding complete!'
