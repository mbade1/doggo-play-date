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


park_1 = Park.create(name: "Norwood Estate Dog Park", location: "1009 Edgecliff Terrace", hound: "All", description: "Fenced-off dog park with some park benches, tree shade, water supply & drinking bowls.")
park_2 = Park.create(name: "Red Bud Isle", location: "3401 Redbud Trail", hound: "Pupper", description: "Lakefront off-leash dog park with 13 acres of recreational space, plus hiking, canoeing & kayaking.")
park_3 = Park.create(name: "Great Northern Dog Park", location: "7099 Great Northern Blvd", hound: "All", description: "Large off-leash dog area featuring walking paths, a retention pond & grassy open areas.")

playdate_1 = Playdate.create(date: "2020-08-20", time: '-12:00', park_id: 1, user_id: 1)
playdate_2 = Playdate.create(date: "2020-09-23", time: '-24:00', park_id: 1, user_id: 1)
playdate_3 = Playdate.create(date: "2020-08-14", time: '-23:00', park_id: 1, user_id: 2)
playdate_4 = Playdate.create(date: "2020-08-26", time: '-19:00', park_id: 2, user_id: 2)
playdate_5 = Playdate.create(date: "2022-01-25", time: '-18:00', park_id: 2, user_id: 3)
playdate_6 = Playdate.create(date: "2022-01-01", time: '-14:00', park_id: 3, user_id: 3)

comment_1 = Comment.create(comment: "Wow! What a beautiful park!", park_id: 1, user_id: 1, park_review: 4)
comment_2 = Comment.create(comment: "I love this park!", park_id: 1, user_id: 1, park_review: 5)
comment_3 = Comment.create(comment: "Waste of time.", park_id: 1, user_id: 2, park_review: 3)
comment_4 = Comment.create(comment: "Ever since they got rid of free snowcones, I've stopped going here.", park_id: 1, user_id: 2, park_review: 1)
comment_5 = Comment.create(comment: "The government is listening in this park.", park_id: 1, user_id: 3, park_review: 2)
comment_6 = Comment.create(comment: "My dogs ears can hear the government.", park_id: 1, user_id: 3, park_review: 2)
