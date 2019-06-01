1.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "test@test.com",
    password: "password",
  )

  4.times do 
    trip = Trip.create(
    title: Faker::Movies::HitchhikersGuideToTheGalaxy.planet,
    people:Faker::Movies::HitchhikersGuideToTheGalaxy.character,
    stops: "something",
    transportation: Faker::Movies::HitchhikersGuideToTheGalaxy.starship,
    user_id: user.id
    )

    4.times do
      location = Location.create(
        name: Faker::Company.industry,
        attraction: Faker::Restaurant.name,
        rating: Faker::SlackEmoji.food_and_drink,
        note: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
        trip_id: trip.id
      )

      1.times do
        address = Address.create(
          name: Faker::Company.bs,
          street: Faker::Address.street_address,
          city: Faker::Address.city,
          state: Faker::Address.state,
          zip: Faker::Address.zip_code,
          location_id: location.id
        )
      end
    end
  end
end


puts "seeds created"