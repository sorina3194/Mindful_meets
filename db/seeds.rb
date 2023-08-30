require 'faker'
require 'open-uri'

puts "Cleaning up Database 🧼"
User.destroy_all

puts 'Creating 30 Fake Users... 😍'

url = [
  "https://kitt.lewagon.com/placeholder/users/berlincoders",
  "https://kitt.lewagon.com/placeholder/users/malteasmuth",
  "https://kitt.lewagon.com/placeholder/users/fafafarah",
  "https://kitt.lewagon.com/placeholder/users/buklewski",
  "https://kitt.lewagon.com/placeholder/users/priscila0210",
  "https://kitt.lewagon.com/placeholder/users/lilzenith",
  "https://kitt.lewagon.com/placeholder/users/rcopra",
  "https://kitt.lewagon.com/placeholder/users/giovanenery",
  "https://kitt.lewagon.com/placeholder/users/mdarbois",
  "https://kitt.lewagon.com/placeholder/users/adamtomczyk",
  "https://kitt.lewagon.com/placeholder/users/ogsoundfx",
  "https://kitt.lewagon.com/placeholder/users/ofeldman516",
  "https://kitt.lewagon.com/placeholder/users/bertchdg",
  "https://kitt.lewagon.com/placeholder/users/ozgekilic96",
  "https://kitt.lewagon.com/placeholder/users/thegroosalugg",
  "https://kitt.lewagon.com/placeholder/users/irinemancebo",
  "https://kitt.lewagon.com/placeholder/users/brunna-monteiro",
  "https://kitt.lewagon.com/placeholder/users/marcel-pinto-web",
  "https://kitt.lewagon.com/placeholder/users/sebaspont",
  "https://kitt.lewagon.com/placeholder/users/bladerunner2023",
  "https://kitt.lewagon.com/placeholder/users/iyayi2",
  "https://kitt.lewagon.com/placeholder/users/nadjajr",
  "https://kitt.lewagon.com/placeholder/users/grayfox2077",
  "https://kitt.lewagon.com/placeholder/users/sashatov",
  "https://kitt.lewagon.com/placeholder/users/zoevandantzig",
  "https://kitt.lewagon.com/placeholder/users/keltz-dev",
  "https://kitt.lewagon.com/placeholder/users/santiagosan93",
  "https://kitt.lewagon.com/placeholder/users/pbragamiranda",
  "https://kitt.lewagon.com/placeholder/users/lamoureuxmarie",
  "https://kitt.lewagon.com/placeholder/users/jhibbeard89",
  "https://kitt.lewagon.com/placeholder/users/eduroldani"
]

id = 0
30.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    birthday: Faker::Time.between(from: 65.years.ago, to: 18.years.ago),
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: "123456",
    min_age: rand(20..30),
    max_age: rand(50..60),
    biography: Faker::Lorem.sentences(number: 2),
    skills: ["eating", "coding", "sometimes yoga, but very seldomly", "sleeping"].sample,
    city: Faker::Address.city,
    hobbies: Faker::Hobby.activity,
    music_genres: Faker::Music.genre,
    book_genres: Faker::Book.genre,
    movie_genres: Faker::Movie.title,
    favorite_animal: Faker::Creature::Animal.name
  )

  image = URI.open(url[id])
  user.photo.attach(io: image, filename: "profpic.jpg", content_type: "image/jpg")
  user.save
  id += 1
end

puts "Creating four real users 🧜🏻‍♂️ 💃 👱🏼‍♀️ 😍"

file = URI.open("https://kitt.lewagon.com/placeholder/users/zuzannadobak")
zuzanna = User.new(
  first_name: "Zuzanna",
  last_name: "Dobak",
  min_age: 25,
  max_age: 56,
  biography: "Hello, I'm Zuzanna 🙋🏽‍♀️",
  birthday: Faker::Date.birthday(min_age: 18, max_age: 60),
  skills: ["eating", "coding", "sometimes yoga, but very seldomly", "sleeping"].sample,
  city: "Berlin",
  hobbies: ["eating", "coding", "sometimes yoga, but very seldomly", "sleeping"].sample,
  music_genres: ["Metal", "Psy Trance", "Classic", "HipHop😎", "Rock🤘"].sample,
  book_genres: ["Romance", "Crime", "Classics"].sample,
  movie_genres: ["Romance", "Crime", "Classics", "Action"].sample,
  favorite_animal: "🐶 Dogs",
  email: "zuza@test.com",
  password: "123456"
)
zuzanna.photo.attach(io: file, filename: "zuzanna.png", content_type: "image/png")
zuzanna.save
puts "#{User.count} users in database"

file = URI.open("https://kitt.lewagon.com/placeholder/users/nessimkh")
nessim = User.new(
  first_name: "Nessim",
  last_name: "Khayyat",
  biography: "Hello, I'm Nessim 🤓",
  birthday: Faker::Time.between(from: 60.years.ago, to: 18.years.ago),
  min_age: 18,
  max_age: 30,
  skills: ["eating", "coding", "sometimes yoga, but very seldomly", "sleeping"].sample,
  city: "Berlin",
  hobbies: ["eating", "coding", "sometimes yoga, but very seldomly", "sleeping"].sample,
  music_genres: ["Metal", "Psy Trance", "Classic", "HipHop😎", "Rock🤘"].sample,
  book_genres: ["Romance", "Crime", "Classics"].sample,
  movie_genres: ["Romance", "Crime", "Classics", "Action"].sample,
  favorite_animal: "Elephant 🐘",
  email: "nessim@test.com",
  password: "123456"
)
nessim.photo.attach(io: file, filename: "nessim.png", content_type: "image/png")
nessim.save
puts "#{User.count} users in database"

file = URI.open("https://kitt.lewagon.com/placeholder/users/sorina3194")
sorina = User.new(
  first_name: "Sorina",
  last_name: "Tudor",
  biography: "Hello, I'm Sorina 🤓",
  birthday: Faker::Time.between(from: 60.years.ago, to: 18.years.ago),
  min_age: 25,
  max_age: 56,
  skills: ["eating", "coding", "sometimes yoga, but very seldomly", "sleeping"].sample,
  city: "Berlin",
  hobbies: ["eating", "coding", "sometimes yoga, but very seldomly", "sleeping"].sample,
  music_genres: ["Metal", "Psy Trance", "Classic", "HipHop😎", "Rock🤘"].sample,
  book_genres: ["Romance", "Crime", "Classics"].sample,
  movie_genres: ["Romance", "Crime", "Classics", "Action"].sample,
  favorite_animal: ["Sloth 🦥", "Fish 🐡", "Elephant 🐘", "Lamb 🐑"].sample,
  email: "sorina@test.com",
  password: "123456"
)
sorina.photo.attach(io: file, filename: "sorina.png", content_type: "image/png")
sorina.save
puts "#{User.count} users in database"

file = URI.open("https://kitt.lewagon.com/placeholder/users/emmvs")
emma = User.new(
  first_name: "Emma",
  last_name: "Ruenzel",
  birthday: Faker::Time.between(from: 60.years.ago, to: 18.years.ago),
  min_age: 25,
  max_age: 65,
  skills: ["eating", "coding", "sometimes yoga, but very seldomly", "sleeping"].sample,
  city: "Berlin",
  hobbies: ["eating", "coding", "sometimes yoga, but very seldomly", "sleeping"].sample,
  music_genres: ["Metal", "Psy Trance", "Classic", "HipHop😎", "Rock🤘"].sample,
  book_genres: ["Romance", "Crime", "Classics"].sample,
  movie_genres: ["Romance", "Crime", "Classics", "Action"].sample,
  favorite_animal: "Sloth 🦥",
  biography: "Hello, I'm Emma 🧞‍♀️",
  email: "emma@test.com",
  password: "123456"
)
emma.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
emma.save

puts 'Seeds are planted! 🌱🌱🌱'
