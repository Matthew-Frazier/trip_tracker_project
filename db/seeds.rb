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
    people:   ,
    stops:         ,
    transportation: 
    user_id: user.id
    )

    4.times do
      location = Location.create(
        name: Faker::Company.industry,
        attraction:
        rating:
        note:
        trip_id: trip.id
      )

      3.times do
        address = Address.create(
          name: Faker::Company.bs,
          street:
          city:
          state:
          zip:
          location_id: location.id
        )
      end
    end
  end
end


puts "seeds created"