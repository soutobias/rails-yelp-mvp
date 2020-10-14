# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Restaurant.destroy_all
Review.destroy_all


puts 'Creating cool Restaurants!'
10.times {
  Restaurant.create(
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  phone_number: Faker::PhoneNumber.phone_number,
  category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
  5.times {
    Review.create(
      rating: [0, 1, 2, 3, 4, 5].sample,
      content: Faker::TvShows::RuPaul.quote,
      restaurant_id: Restaurant.maximum('id')
      )
  }
}
