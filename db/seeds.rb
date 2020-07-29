# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(username: "Patrick", password: "password", uid: "1011101", family_size: 2 )
user_2 = User.create(username: "Rudy", password: "password", uid: nil, family_size: 3)
user_3 = User.create(username: "Sandra", password: "password", uid: nil, family_size: 5)


park_1 = Park.create(name: "Park Lane Park", location: "114 Park Lane", hound: "Doggo", description: "A beautiful park.")
park_2 = Park.create(name: "Better than Park Lane Park Park", location: "1000 Park Avenue", hound: "Pupper", description: "A park for puppers.")
park_3 = Park.create(name: "Doggo Central", location: "1234 Dog City", hound: "All", description: "Bounce House for Dogs")
park_4 = Park.create(name: "Big Dogz Only", location: "1234 Big Dog City", hound: "Doggo", description: "Huge dogs only - no wimps.")
park_5 = Park.create(name: "Secret Agent Pups Only", location: "001 Bond Drive", hound: "Pupper", description: "James Bond themed dog park")
park_6 = Park.create(name: "Jumpin Puppers and Doggos Park",location: "2000 Trampoline Drive", hound: "All", description: "Trampoline Park for Dogs")

playdate_1 = Playdate.create(date: "2020-01-01", time: '-12:00', park_id: 1, user_id: 1)
playdate_2 = Playdate.create(date: "2020-05-01", time: '-24:00', park_id: 1, user_id: 1)
playdate_3 = Playdate.create(date: "2020-07-01", time: '-23:00', park_id: 1, user_id: 2)
playdate_4 = Playdate.create(date: "2020-07-19", time: '-19:00', park_id: 2, user_id: 2)
playdate_5 = Playdate.create(date: "2022-01-05", time: '-18:00', park_id: 2, user_id: 3)
playdate_6 = Playdate.create(date: "2022-01-01", time: '-14:00', park_id: 3, user_id: 3)

comment_1 = Comment.create(comment: "Wow! What a beautiful park!", playdate_id: 1, user_id: 1 )
comment_2 = Comment.create(comment: "I love this park!", playdate_id: 1, user_id: 1)
comment_3 = Comment.create(comment: "Waste of time.", playdate_id: 1, user_id: 2)
comment_4 = Comment.create(comment: "Ever since they got rid of free snowcones, I've stopped going here.", playdate_id: 1, user_id: 2)
comment_5 = Comment.create(comment: "The government is listening in this park.", playdate_id: 1, user_id: 3)
comment_6 = Comment.create(comment: "My dogs ears can hear the government.", playdate_id: 1, user_id: 3)
