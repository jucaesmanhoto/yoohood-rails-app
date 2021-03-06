# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'cleaning places...'

Place.destroy_all

puts "#{Place.count} places remaining"

30.times do
  Place.create!(
    place_name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    city: Faker::Address.city,
    country: Faker::Address.country,
    zip_code: Faker::Address.zip_code,
  )
end

puts "#{Place.count} new places added to the database"
