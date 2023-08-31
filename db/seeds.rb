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

  # change the users from 30 to 5 because of 'conflicts' with faker;
  # faker is complaining we are using it to much and giving us errors;
  # We will add it on FRIDAY before demo!!!!
  # and then again in the next week on the LAST DAY!!!!

id = 0
5.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.username,
    biography: Faker::Lorem.sentences,
    age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
    skills: ["Eating", "Coding", "Sometimes yoga, but very seldomly", "Sleeping", "Boxing", "Collecting stamps", "Visualise things", "Reading cards", "Climbing trees", "Playing ukulele", "Beeing stressed all the time and keep smile"].sample,
    city: Faker::Address.city,
    hobbies: Faker::Hobby.activity,
    music_genres: Faker::Music.genre,
    book_genres: Faker::Book.genre,
    movie_genres: Faker::Movie.title,
    favorite_animal: Faker::Creature::Animal.name,
    email: Faker::Internet.email,
    password: "123456",
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
  biography: "Hello, I'm Zuzanna 🙋🏽‍♀️",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating", "Coding", "Sometimes yoga, but very seldomly", "Sleeping", "Boxing", "Collecting stamps", "Visualise things", "Reading cards", "Climbing trees", "Playing ukulele", "Beeing stressed all the time and keep smile"].sample,
  city: "Berlin",
  hobbies: ["Eating", "Coding", "Sometimes yoga, but very seldomly", "Sleeping", "Boxing", "Collecting stamps", "Visualise things", "Reading cards", "Climbing trees", "Playing ukulele", "Beeing stressed all the time and keep smile"].sample,
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
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating", "Coding", "Sometimes yoga, but very seldomly", "Sleeping", "Boxing", "Collecting stamps", "Visualise things", "Reading cards", "Climbing trees", "Playing ukulele", "Beeing stressed all the time and keep smile"].sample,
  city: "Berlin",
  hobbies: ["Eating", "Coding", "Sometimes yoga, but very seldomly", "Sleeping", "Boxing", "Collecting stamps", "Visualise things", "Reading cards", "Climbing trees", "Playing ukulele", "Beeing stressed all the time and keep smile"].sample,
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
  biography: "Hello, I'm Sorina 👱🏼‍♀️",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating", "Coding", "Sometimes yoga, but very seldomly", "Sleeping", "Boxing", "Collecting stamps", "Visualise things", "Reading cards", "Climbing trees", "Playing ukulele", "Beeing stressed all the time and keep smile"].sample,
  city: "Berlin",
  hobbies: ["Eating", "Coding", "Sometimes yoga, but very seldomly", "Sleeping", "Boxing", "Collecting stamps", "Visualise things", "Reading cards", "Climbing trees", "Playing ukulele", "Beeing stressed all the time and keep smile"].sample,
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
  biography: "Hello, I'm Emma 🧞‍♀️",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating", "Coding", "Sometimes yoga, but very seldomly", "Sleeping", "Boxing", "Collecting stamps", "Visualise things", "Reading cards", "Climbing trees", "Playing ukulele", "Beeing stressed all the time and keep smile"].sample,
  city: "Berlin",
  hobbies: ["Eating", "Coding", "Sometimes yoga, but very seldomly", "Sleeping", "Boxing", "Collecting stamps", "Visualise things", "Reading cards", "Climbing trees", "Playing ukulele", "Beeing stressed all the time and keep smile"].sample,
  music_genres: ["Metal", "Psy Trance", "Classic", "HipHop😎", "Rock🤘"].sample,
  book_genres: ["Romance", "Crime", "Classics"].sample,
  movie_genres: ["Romance", "Crime", "Classics", "Action"].sample,
  favorite_animal: "Sloth 🦥",
  email: "emma@test.com",
  password: "123456"
)
emma.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
emma.save

puts 'Seeds are planted! 🌱🌱🌱'
