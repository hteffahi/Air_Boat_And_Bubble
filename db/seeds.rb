# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Booking.destroy_all
Boat.destroy_all
User.destroy_all

User.create(email: "bobvance@email.com", password: "123456", phone_number: "+33620304050", last_name: "Vance", first_name: "Bob")
User.create(email: "tobbymachin@email.com", password: "abcdef", phone_number: "+33644556677", last_name: "Machin", first_name: "Tobby")

boat_1 = Boat.new(name: "titanic", capacity: 4000, category: "liner", price: 20_000)
boat_1.user = User.all.sample
boat_1.save

boat_2 = Boat.new(name: "Tulipe", capacity: 15, category: "Barge", price: 1500)
boat_2.user = User.all.sample
boat_2.save

boat_3 = Boat.new(name: "Unsinkable II", capacity: 20, category: "Barge", price: 300)
boat_3.user = User.all.sample
boat_3.save

boat_4= Boat.new(name: "Atlantis", capacity: 3, category: "Fishing Boat", price: 499)
boat_4.user = User.all.sample
boat_4.save

boat_5 = Boat.new(name: "Serendipity", capacity: 12, category: "Yatch", price: 2350)
boat_5.user = User.all.sample
boat_5.save

boat_6 = Boat.new(name: "Aurora", capacity: 15, category: "Yatch", price: 8000)
boat_6.user = User.all.sample
boat_6.save

boat_7 = Boat.new(name: "Dream Weaver", capacity: 8, category: "Liner", price: 150)
boat_7.user = User.all.sample
boat_7.save

boat_8 = Boat.new(name: "Sail La Vie", capacity: 5, category: "Floating boat", price: 50)
boat_8.user = User.all.sample
boat_8.save

boat_9 = Boat.new(name: "Little King", capacity: 3, category: "Fishing boat", price: 10)
boat_9.user = User.all.sample
boat_9.save

boat_10 = Boat.new(name: "Yatch1387", capacity: 3, category: "Yatch", price: 3)
boat_10.user = User.all.sample
boat_10.save

puts "finished"
