# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Gossip.destroy_all
City.destroy_all
PrivateMessage.destroy_all
Tag.destroy_all

10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 5), email: Faker::Internet.email, age: Faker::Number.within(range: 1..110), 
  city: City.create(name: Faker::Address.city, zip_code: Faker::Address.zip))
end

20.times do
  user = User.all[rand(0..9)]
  user.gossips << Gossip.create(title: Faker::App.name, content: Faker::Quote.yoda)
  user.gossips.first.tags << Tag.create(title: Faker::JapaneseMedia::DragonBall.character)
end

10.times do
  user1 = User.all[rand(0..9)]
  user2 = User.all[rand(0..9)]
  PrivateMessage.create(content: Faker::TvShows::RickAndMorty.quote, recipient: user2, sender: user1)
end