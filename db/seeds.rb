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
    name: Faker::Name.name,
    birthday: Faker::Date.birthday(min_age: 18, max_age: 60),
    registered_at: faker.date.past(),
    internet: Faker::Internet.user('username', 'email', 'password'),
    age_range: [""].sample,
    biography: faker.person.bio(),
    skills: [""].sample,
    city: Faker::Address.city,
    hobbies: Faker::Hobby,
    mousic_genres: Faker::Music,
    book_genres: Faker::Book,
    movie_genres: Faker::Movie,
    favorite_animal: Faker::Creature::Animal
  )
  user.save!
end
puts 'User seeds user are planted 🌱🌱🌱!'
