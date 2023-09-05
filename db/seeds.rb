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
# ]

file = URI.open("https://kitt.lewagon.com/placeholder/users/brunna-monteiro")
brunna = User.new(
  name: "Brunna Monteiro",
  username: "brunnaaaa",
  biography: "A brazilian lawyer singer super hero 🦸🏼‍♀️",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating", "Coding", "Sometimes yoga, but very seldomly", "Sleeping", "Boxing", "Collecting stamps", "Visualise things", "Reading cards", "Climbing trees", "Playing ukulele", "Beeing stressed all the time and keep smile"].sample,
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

file = URI.open("https://kitt.lewagon.com/placeholder/users/sorina3194")
olivia = User.new(
  name: "Olivia Feldman",
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
  email: "olivia@test.com",
  password: "123456"
  )

olivia.photo.attach(io: file, filename: "olivia.jpg", content_type: "image/jpg")
olivia.save

puts "Creating project users 🧜🏻‍♂️ 💃 👱🏼‍♀️ 😍"

file = URI.open("https://kitt.lewagon.com/placeholder/users/zuzannadobak")
zuzanna = User.new(
  name: "Zuzanna Dobak",
  biography: "Hello, I'm Zuzanna 🙋🏽‍♀️",
  age: [18, 21, 24, 27, 30, 33, 36, 39, 44, 45, 48, 52, 55, 58, 62, 65].sample,
  skills: ["Eating", "Coding", "Sometimes yoga, but very seldomly", "Sleeping", "Boxing", "Collecting stamps", "Visualise things", "Reading cards", "Climbing trees", "Playing ukulele", "Beeing stressed all the time and keep smile"].sample,
  city: "Berlin",
  hobbies: ["Eating", "Coding", "Sometimes yoga, but very seldomly", "Sleeping", "Boxing", "Collecting stamps", "Visualise things", "Reading cards", "Climbing trees", "Playing ukulele", "Beeing stressed all the time and keep smile"].sample,
  music_genres: ["Metal", "Psy Trance", "Classic", "HipHop😎", "Rock🤘"].sample,
  book_genres: ["Romance", "Crime", "Classics"].sample,
  movie_genres: ["Romance", "Crime", "Classics", "Action"].sample,
  favorite_animal: "My three 🐶",
  email: "zuza@test.com",
  password: "123456"
)
zuzanna.photo.attach(io: file, filename: "zuzanna.png", content_type: "image/png")
zuzanna.save
puts "#{User.count} users in database"

file = URI.open("https://kitt.lewagon.com/placeholder/users/nessimkh")
nessim = User.new(
  name: "Nessim Khayyat",
  biography: "Hello, I'm Nessim 🙋🏻",
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
  name: "Sorina Tudor",
  biography: "Hello, I'm Sorina 🙋‍♀️",
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
  name: "Emma Ruenzel",
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

# Friendships
friendship = Friendship.create(user: zuzanna, friend: emma, status: "pending", accepted?: false)
friendship1 = Friendship.create(user: zuzanna, friend: olivia, status: "pending", accepted?: false)
friendship3 = Friendship.create(user: zuzanna, friend: nessim, status: "accepted", accepted?: true)

# Rooms
room1 = Room.create(name: "Mindful Room 1", vonage_session_id: "1")
room2 = Room.create(name: "Mindful Room 2", vonage_session_id: "2")

# ChatSessions
chatsession1 = ChatSession.create(invitations_count: 3, video_chat_link: "zoom.com", status: "completed", room_id: room1.id)
chatsession2 = ChatSession.create(invitations_count: 3, video_chat_link: "zoom.com", status: "completed", room_id: room2.id)
chatsession3 = ChatSession.create(invitations_count: 3, video_chat_link: "zoom.com", status: "completed", room_id: room2.id)
chatsession4 = ChatSession.create(invitations_count: 3, video_chat_link: "zoom.com", status: "completed", room_id: room2.id)
chatsession5 = ChatSession.create(invitations_count: 3, video_chat_link: "zoom.com", status: "completed", room_id: room2.id)

# Invitations
invitations1 = Invitation.new(video_chat_link: "zoom.com/chatlink", name: "Mindful Meeting", status: "pending", user_id: zuzanna.id, invitee_id: brunna.id, chat_session_id: chatsession1.id)
invitations1.save!

invitations2 = Invitation.create(video_chat_link: "zoom.com/chatlink", name: "Mindful Meeting", status: "pending", user_id: zuzanna.id, invitee_id: emma.id, chat_session_id: chatsession1.id)
invitations3 = Invitation.create(video_chat_link: "zoom.com/chatlink", name: "Mindful Meeting", status: "accepted", user_id: zuzanna.id, invitee_id: sorina.id, chat_session_id: chatsession1.id)
invitations4 = Invitation.create(video_chat_link: "zoom.com/chatlink", name: "Mindful Meeting", status: "accepted", user_id: zuzanna.id, invitee_id: nessim.id, chat_session_id: chatsession1.id)

invitations5 = Invitation.create(video_chat_link: "zoom.com/chatlink", name: "Mindful Meeting", status: "pending", user_id: emma.id, invitee_id: zuzanna.id, chat_session_id: chatsession2.id)
invitations6 = Invitation.create(video_chat_link: "zoom.com/chatlink", name: "Mindful Meeting", status: "pending", user_id: brunna.id, invitee_id: zuzanna.id, chat_session_id: chatsession3.id)
invitations7 = Invitation.create(video_chat_link: "zoom.com/chatlink", name: "Mindful Meeting", status: "accepted", user_id: sorina.id, invitee_id: zuzanna.id, chat_session_id: chatsession4.id)
invitations8 = Invitation.create(video_chat_link: "zoom.com/chatlink", name: "Mindful Meeting", status: "accepted", user_id: nessim.id, invitee_id: zuzanna.id, chat_session_id: chatsession5.id)


puts 'Seeds are planted! 🌱🌱🌱'
