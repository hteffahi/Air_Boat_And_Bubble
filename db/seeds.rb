# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all
Boat.destroy_all

User.create(email: "bobvance@email.com", password: "123456", phone_number: "+33620304050", last_name: "Vance", first_name: "Bob")
User.create(email: "tobbymachin@email.com", password: "abcdef", phone_number: "+33644556677", last_name: "Machin", first_name: "Tobby")

boat = Boat.new(name: "titanic", capacity: 4000, category: "liner", price: 20_000)
boat.user = User.all.sample
boat.save

Boat.create(name: "Tulipe", capacity: 15, category: "Barge", price: 1500)
boat.user = User.all.sample
boat.save
Boat.create(name: "Unsinkable II", capacity: 20, category: "Barge", price: 300)
boat.user = User.all.sample
boat.save
Boat.create(name: "Atlantis", capacity: 3, category: "Fishing Boat", price: 499)
boat.user = User.all.sample
boat.save
Boat.create(name: "Serendipity", capacity: 12, category: "Yatch", price: 2350)
boat.user = User.all.sample
boat.save
Boat.create(name: "Aurora", capacity: 15, category: "Yatch", price: 8000)
boat.user = User.all.sample
boat.save
Boat.create(name: "Dream Weaver", capacity: 8, category: "Liner", price: 150)
boat.user = User.all.sample
boat.save
Boat.create(name: "Sail La Vie", capacity: 5, category: "Floating boat", price: 50)
boat.user = User.all.sample
boat.save
Boat.create(name: "Little King", capacity: 3, category: "Fishing boat", price: 10)
boat.user = User.all.sample
boat.save
Boat.create(name: "Yatch1387", capacity: 3, category: "Yatch", price: 3)
boat.user = User.all.sample
boat.save

puts "finished"
