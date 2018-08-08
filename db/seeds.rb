Review.delete_all
Restaurant.delete_all

5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  review = Review.new(
    content: "Hey",
    rating: 5
  )
  restaurant.reviews << review
  restaurant.save!
end


