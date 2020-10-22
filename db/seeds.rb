# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: "chris", password: "kay")
u2 = User.create(username: "rick", password: "sanchez")
u3 = User.create(username: "keanu", password: "reeves")

g1 = u1.games.create(score: 1000)
g2 = u1.games.create(score: 1200)
g3 = u1.games.create(score: 1300)
g4 = u2.games.create(score: 900)
g5 = u2.games.create(score: 2000)