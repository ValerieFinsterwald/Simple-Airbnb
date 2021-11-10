# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  @flat = Flat.new(name: Faker::Beer.name,
  address: Faker::Address.full_address,
  description: Faker::Emotion.adjective,
  price_per_night: rand(20..500),
  number_of_guests: rand(1..20))
  @flat.save
end
