require 'faker'
require 'open-uri'

puts "Cleaning up Database 🧼"
Invitation.destroy_all
ChatSession.destroy_all
Room.destroy_all
Friendship.destroy_all
User.destroy_all

puts 'Creating 5 Fake Users... 😍'

# Change the users from 30 to 5 because of 'conflicts' with faker;
# faker is complaining we are using it to much and giving us errors;
# We will add it on FRIDAY before demo!!!!
# and then again in the next week on the LAST DAY!!!!

# url = [
#   "https://kitt.lewagon.com/placeholder/users/berlincoders",
#   "https://kitt.lewagon.com/placeholder/users/malteasmuth",
#   "https://kitt.lewagon.com/placeholder/users/fafafarah",
#   "https://kitt.lewagon.com/placeholder/users/buklewski",
#   "https://kitt.lewagon.com/placeholder/users/priscila0210",
#   "https://kitt.lewagon.com/placeholder/users/lilzenith",
#   "https://kitt.lewagon.com/placeholder/users/rcopra",
#   "https://kitt.lewagon.com/placeholder/users/giovanenery",
#   "https://kitt.lewagon.com/placeholder/users/mdarbois",
#   "https://kitt.lewagon.com/placeholder/users/adamtomczyk",
#   "https://kitt.lewagon.com/placeholder/users/ogsoundfx",
#   "https://kitt.lewagon.com/placeholder/users/ofeldman516",
#   "https://kitt.lewagon.com/placeholder/users/bertchdg",
#   "https://kitt.lewagon.com/placeholder/users/ozgekilic96",
#   "https://kitt.lewagon.com/placeholder/users/thegroosalugg",
#   "https://kitt.lewagon.com/placeholder/users/irinemancebo",
#   "https://kitt.lewagon.com/placeholder/users/brunna-monteiro",
#   "https://kitt.lewagon.com/placeholder/users/marcel-pinto-web",
#   "https://kitt.lewagon.com/placeholder/users/sebaspont",
#   "https://kitt.lewagon.com/placeholder/users/bladerunner2023",
#   "https://kitt.lewagon.com/placeholder/users/iyayi2",
#   "https://kitt.lewagon.com/placeholder/users/nadjajr",
#   "https://kitt.lewagon.com/placeholder/users/grayfox2077",
#   "https://kitt.lewagon.com/placeholder/users/sashatov",
#   "https://kitt.lewagon.com/placeholder/users/zoevandantzig",
#   "https://kitt.lewagon.com/placeholder/users/keltz-dev",
#   "https://kitt.lewagon.com/placeholder/users/santiagosan93",
#   "https://kitt.lewagon.com/placeholder/users/pbragamiranda",
#   "https://kitt.lewagon.com/placeholder/users/lamoureuxmarie",
#   "https://kitt.lewagon.com/placeholder/users/jhibbeard89",
#   "https://kitt.lewagon.com/placeholder/users/eduroldani"

file = URI.open("https://kitt.lewagon.com/placeholder/users/buklewski")
joel = User.new(
  name: "Joel Buklewski",
  username: "Joel",
  biography: "Hello, I am Joel 👨🏻‍🎓",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "joel@test.com",
  password: "123456"
  )
joel.photo.attach(io: file, filename: "joel.jpg", content_type: "image/jpg")
joel.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/malteasmuth")
malte = User.new(
  name: "Malte Asmuth",
  username: "Malte",
  biography: "Hello, I am Malte 🧑🏽‍💻",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "malte@test.com",
  password: "123456"
  )
malte.photo.attach(io: file, filename: "malte.jpg", content_type: "image/jpg")
malte.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/rcopra")
rick = User.new(
  name: "Rick Copra",
  username: "Rick",
  biography: "Hello, I am Rick 👨🏻‍🎓",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "rick@test.com",
  password: "123456"
  )
rick.photo.attach(io: file, filename: "rick.jpg", content_type: "image/jpg")
rick.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/giovanenery")
giovane = User.new(
  name: "Giovane d'Andrea Nery",
  username: "Giovane",
  biography: "Hello, I am Giovane 👨🏻‍🎓",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "giovane@test.com",
  password: "123456"
  )
giovane.photo.attach(io: file, filename: "giovane.jpg", content_type: "image/jpg")
giovane.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/mdarbois")
marie = User.new(
  name: "Marie Darbois",
  username: "Marie",
  biography: "Hello, I am Marie 👩🏻‍🎓",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "marie@test.com",
  password: "123456"
  )
marie.photo.attach(io: file, filename: "marie.jpg", content_type: "image/jpg")
marie.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/adamtomczyk")
adam = User.new(
  name: "Adam Tomczyk",
  username: "Adam",
  biography: "Best teacher super hero ⚽️",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "adam@test.com",
  password: "123456"
  )
adam.photo.attach(io: file, filename: "adam.jpg", content_type: "image/jpg")
adam.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/bertchdg")
brett = User.new(
  name: "Brett Hodge",
  username: "Brett",
  biography: "Hello, I am Brett 👨🏻‍🎓",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "brett@test.com",
  password: "123456"
  )
brett.photo.attach(io: file, filename: "brett.jpg", content_type: "image/jpg")
brett.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/IreneMancebo")
irene = User.new(
  name: "Irene Martínez Mancebo",
  username: "Irene",
  biography: "Hello, I am irene 👧🏻",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "irene@test.com",
  password: "123456"
  )
irene.photo.attach(io: file, filename: "irene.jpg", content_type: "image/jpg")
irene.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/marcel-pinto-web")
marcel = User.new(
  name: "Marcel Pinto",
  username: "Marcel",
  biography: "Hello, I am Marcel 🧑🏽‍💻",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "marcel@test.com",
  password: "123456"
  )
marcel.photo.attach(io: file, filename: "marcel.jpg", content_type: "image/jpg")
marcel.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/nadjajr")
nadja = User.new(
  name: "Nadja Rünzel",
  username: "Nadja",
  biography: "Stay cool, be happy and spread the sunny energy 🦸🏼‍♀️",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "nadja@test.com",
  password: "123456"
  )
nadja.photo.attach(io: file, filename: "nadja.jpg", content_type: "image/jpg")
nadja.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/sashatov")
sasha = User.new(
  name: "Sasha Tovshchyk",
  username: "Sasha",
  biography: "Backend super girl 🦸🏼‍♀️",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "sasha@test.com",
  password: "123456"
  )
sasha.photo.attach(io: file, filename: "sasha.jpg", content_type: "image/jpg")
sasha.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/zoevandantzig")
zoe = User.new(
  name: "Zoe van Dantzig",
  username: "Zoe",
  biography: "Fronted super girl 🦸🏼‍♀️",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "zoe@test.com",
  password: "123456"
  )
zoe.photo.attach(io: file, filename: "zoe.jpg", content_type: "image/jpg")
zoe.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/pbragamiranda")
pedro = User.new(
  name: "Pedro Miranda",
  username: "Pedro",
  biography: "Just stay cool, be happy and turn ideas into code 🧜🏻‍♂️",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "pedro@test.com",
  password: "123456"
  )
pedro.photo.attach(io: file, filename: "pedro.jpg", content_type: "image/jpg")
pedro.save


file = URI.open("https://kitt.lewagon.com/placeholder/users/jhibbeard89")
james = User.new(
  name: "James Hibbeard",
  username: "James",
  biography: "A super coding hero from le wagon 🤙🏻",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "james@test.com",
  password: "123456"
  )
james.photo.attach(io: file, filename: "james.jpg", content_type: "image/jpg")
james.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/eduroldani")
edu = User.new(
  name: "Edu Roldan",
  username: "Edu",
  biography: "Another super hero 💪🏽",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "edu@test.com",
  password: "123456"
  )
edu.photo.attach(io: file, filename: "edu.jpg", content_type: "image/jpg")
edu.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/brunna-monteiro")
brunna = User.new(
  name: "Brunna Monteiro",
  username: "Brunna",
  biography: "A brazilian lawyer singer super hero 🦸🏼‍♀️",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "brunna@test.com",
  password: "123456"
  )

brunna.photo.attach(io: file, filename: "brunna.jpg", content_type: "image/jpg")
brunna.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/ofeldman516")
olivia = User.new(
  name: "Olivia Feldman",
  username: "Olivia",
  biography: "Hello, I'm Olivia, positive, funny, easy going person 🙋🏽‍♀️",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "olivia@test.com",
  password: "123456"
  )

olivia.photo.attach(io: file, filename: "olivia.jpg", content_type: "image/jpg")
olivia.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/fafafarah")
farah = User.new(
  name: "Farah Boughalem",
  username: "Farah",
  biography: "Hello, I am Farah 💪🏽",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating", "Coding", "Sometimes yoga, but very seldomly", "Sleeping", "Boxing", "Collecting stamps", "Visualise things", "Reading cards", "Climbing trees", "Playing ukulele", "Being stressed all the time"].sample,
  city: Faker::Address.city,
  hobbies: Faker::Hobby.activity,
  music_genres: Faker::Music.genre,
  book_genres: Faker::Book.genre,
  movie_genres: Faker::Movie.title,
  favorite_animal: Faker::Creature::Animal.name,
  email: "farah@test.com",
  password: "123456"
  )

farah.photo.attach(io: file, filename: "farah.jpg", content_type: "image/jpg")
farah.save

puts "Creating project users 🧜🏻‍♂️ 💃 👱🏼‍♀️ 😍"

file = URI.open("https://kitt.lewagon.com/placeholder/users/zuzannadobak")
zuzanna = User.new(
  name: "Zuzanna Dobak",
  username: "Zuzanna",
  biography: "Hello, I'm Zuzanna 🙋🏽‍♀️",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: "Berlin",
  hobbies: Faker::Hobby.activity,
  music_genres: ["Metal 🎸", "Psy Trance 🔮", "Classic 🎻", "HipHop 😎", "Rock 🤘"].sample,
  book_genres: ["Romance ❤️‍🔥", "Crime 🦹🏼‍♂️", "Classics 📚"].sample,
  movie_genres: ["Romance 💝", "Crime 🦹‍♀️", "Classics 🎥", "Action 🏎️"].sample,
  favorite_animal: "My three 🐶",
  email: "zuzanna@test.com",
  password: "123456"
)
zuzanna.photo.attach(io: file, filename: "zuzanna.png", content_type: "image/png")
zuzanna.save
puts "#{User.count} users in database"

file = URI.open("https://kitt.lewagon.com/placeholder/users/nessimkh")
nessim = User.new(
  name: "Nessim Khayyat",
  username: "Nessim",
  biography: "Hello, I'm Nessim 🙋🏻",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: "Berlin",
  hobbies: Faker::Hobby.activity,
  music_genres: ["Metal 🎸", "Psy Trance 🔮", "Classic 🎻", "HipHop 😎", "Rock 🤘"].sample,
  book_genres: ["Romance ❤️‍🔥", "Crime 🦹🏼‍♂️", "Classics 📚"].sample,
  movie_genres: ["Romance 💝", "Crime 🦹‍♀️", "Classics 🎥", "Action 🏎️"].sample,
  favorite_animal: "Elephant 🐘",
  email: "nessim@test.com",
  password: "123456"
)
nessim.photo.attach(io: file, filename: "nessim.png", content_type: "image/png")
nessim.save
puts "#{User.count} users in database"

file = URI.open("https://kitt.lewagon.com/placeholder/users/sorina3194")
sorina = User.new(
  name: "Sorina Tudor",
  username: "Sorina",
  biography: "Hello, I'm Sorina 🙋‍♀️",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: "Berlin",
  hobbies: Faker::Hobby.activity,
  music_genres: ["Metal 🎸", "Psy Trance 🔮", "Classic 🎻", "HipHop 😎", "Rock 🤘"].sample,
  book_genres: ["Romance ❤️‍🔥", "Crime 🦹🏼‍♂️", "Classics 📚"].sample,
  movie_genres: ["Romance 💝", "Crime 🦹‍♀️", "Classics 🎥", "Action 🏎️"].sample,
  favorite_animal: ["Sloth 🦥", "Fish 🐡", "Elephant 🐘", "Lamb 🐑"].sample,
  email: "sorina@test.com",
  password: "123456"
)
sorina.photo.attach(io: file, filename: "sorina.png", content_type: "image/png")
sorina.save

file = URI.open("https://kitt.lewagon.com/placeholder/users/emmvs")
emma = User.new(
  name: "Emma Rünzel",
  username: "Emma",
  biography: "Hello, I'm Emma 🧞‍♀️",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating 🥣", "Coding 👩🏻‍💻", "Sometimes yoga, but very seldomly 🧘🏿‍♂️", "Sleeping 🛌", "Boxing 🥊", "Collecting stamps 🚀", "Visualise things 👀", "Reading cards 🔮", "Climbing trees 🌳", "Playing ukulele 🪕", "Being stressed all the time 🚧"].sample,
  city: "Berlin",
  hobbies: Faker::Hobby.activity,
  music_genres: ["Metal 🎸", "Psy Trance 🔮", "Classic 🎻", "HipHop 😎", "Rock 🤘"].sample,
  book_genres: ["Romance ❤️‍🔥", "Crime 🦹🏼‍♂️", "Classics 📚"].sample,
  movie_genres: ["Romance 💝", "Crime 🦹‍♀️", "Classics 🎥", "Action 🏎️"].sample,
  favorite_animal: "Sloth 🦥",
  email: "emma@test.com",
  password: "123456"
)
emma.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
emma.save

puts "#{User.count} users in database"

puts 'Seeds are planted! 🌱🌱🌱'
