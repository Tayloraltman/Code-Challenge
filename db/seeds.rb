# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


taylor = User.create!(name: "taylor", email: "tayloraltman1@gmail.com")

tweet1 = taylor.tweets.create!(title:"Test1", body: "body body body")

tweet2 = taylor.tweets.create!(title: "Test2", body: "body body body")
tweet3 = taylor.tweets.create!(title: "Test3", body: "body body body")
tweet4 = taylor.tweets.create!(title: "Test4", body: "body body body")