require 'faker'
require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning up Database"
User.destroy_all


puts 'Creating 30 fake users...'
30.times do
  user = User.new(
    # avatar: Faker::Avatar.image,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    birthday: Faker::Date.birthday(min_age: 18, max_age: 60),
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: "123456",
    min_age: rand(20..30),
    max_age: rand(50..60),
    biography: Faker::Lorem.sentences(number: 2),
    skills: Faker::Lorem.words(number: 4),
    city: Faker::Address.city,
    hobbies: Faker::Hobby.activity,
    music_genres: Faker::Music.genre,
    book_genres: Faker::Book.genre,
    movie_genres: Faker::Movie.title,
    favorite_animal: Faker::Creature::Animal
  )
  user.save!
end
puts 'User seeds user are planted 🌱🌱🌱!'

file = URI.open("https://images.unsplash.com/photo-1608889453743-bf8eabeb12fa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1160&q=80")
zuzanna = Avatar.new(
  first_name: "Zuzanna",
  last_name: "Dobak",
  email: "zuza@test.com",
  password: "123456"
)
zuzanna.photo.attach(io: file, filename: "zuzanna.png", content_type: "image/png")
zuzanna.save
puts "#{Avatar.count} users in database"


file = URI.open("https://images.unsplash.com/photo-1608889825146-c9276dc26bdc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1160&q=80")
nessim = Avatar.new(
  first_name: "Nessim",
  last_name: "Khayyat",
  email: "nessim@test.com",
  password: "123456"
)
nessim.photo.attach(io: file, filename: "nessim.png", content_type: "image/png")
nessim.save
puts "#{Avatar.count} users in database"

file = URI.open("https://images.unsplash.com/photo-1608889335941-32ac5f2041b9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1160&q=80")
sorina = Avatar.new(
  first_name: "Sorina",
  last_name: "Tudor",
  email: "sorina@test.com",
  password: "123456"
)
sorina.photo.attach(io: file, filename: "sorina.png", content_type: "image/png")
sorina.save
puts "#{Avatar.count} users in database"

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
avatar = Avatar.new(
  first_name: "Firstavatar",
  last_name: "Lastavatar",
  email: "avatar@test.com",
  password: "123456"
)
avatar.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
avatar.save
