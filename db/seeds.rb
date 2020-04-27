20.times do 
  Artist.create(name: Faker::Games::Overwatch.hero)
end

20.times do 
  Song.create(title: Faker::Games::Overwatch.quote, artist_id: Artist.all.sample.id)
end
