require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all
Song.delete_all

10.times { Artist.create(name: Faker::Music.band)}
20.times { Song.create(title: Faker::Book.title, artist_id: Artist.all.sample.id) }