require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts 'Creating 20 fake users...'
20.times do
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
    skills: [""].sample,
    city: Faker::Address.city,
    hobbies: Faker::Hobby,
    music_genres: Faker::Music,
    book_genres: Faker::Book,
    movie_genres: Faker::Movie,
    favorite_animal: Faker::Creature::Animal
  )
  user.save!
end
puts 'User seeds user are planted 🌱🌱🌱!'
