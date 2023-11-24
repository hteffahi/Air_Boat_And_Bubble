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
User.create(email: "random1@email.com", password: "abcdef", phone_number: "+33644556677", last_name: "Matata", first_name: "Hakuna")
User.create(email: "random2@email.com", password: "abcdef", phone_number: "+33644556666", last_name: "Poppins", first_name: "Marry")
User.create(email: "random3@email.com", password: "abcdef", phone_number: "+33644554555", last_name: "PLay", first_name: "Cold")
User.create(email: "random4@email.com", password: "abcdef", phone_number: "+33644556555", last_name: "Purple", first_name: "Deep")
User.create(email: "random5@email.com", password: "abcdef", phone_number: "+33644556678", last_name: "Tor", first_name: "Radia")
User.create(email: "random6@email.com", password: "abcdef", phone_number: "+33644556622", last_name: "Carey", first_name: "Maria")
User.create(email: "random7@email.com", password: "abcdef", phone_number: "+33644556633", last_name: "France", first_name: "Anatole")
User.create(email: "random8@email.com", password: "abcdef", phone_number: "+33644556644", last_name: "Kent", first_name: "Clark")


boat_1 = Boat.new(name: "Titanic 5", capacity: 4000, category: "Cruiser", price: 20_000, address: "Calais")
boat_1.photo.attach(
  io: URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Adventure_of_the_Seas_Wade_2012.JPG/800px-Adventure_of_the_Seas_Wade_2012.JPG'),
  filename: 'bateau-nautique', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
)
boat_1.user = User.all.sample
boat_1.save

boat_2 = Boat.new(name: "Tulipe", capacity: 7, category: "Barge", price: 200, address: " port de la conference, Paris")
boat_2.photo.attach(
  io: URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Doni_aux_Maldives_cropped.jpg/800px-Doni_aux_Maldives_cropped.jpg'),
  filename: 'bateau2', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
)
boat_2.user = User.all.sample
boat_2.save

boat_3 = Boat.new(name: "Unsinkable II", capacity: 7, category: "Barge", price: 300, address: "port de la bourdonnais, Paris")
boat_3.photo.attach(
  io: URI.open('https://robbreport.com/wp-content/uploads/2023/07/6.-woodengrandcraft1-1.jpg?w=1000'),
  filename: 'bateau_3', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
)

boat_3.user = User.all.sample
boat_3.save

boat_4= Boat.new(name: "Atlantis", capacity: 5, category: "Barge", price: 499, address: "vieux-Port, Marseille")
boat_4.photo.attach(
  io: URI.open('https://www.nauticpulsion.com/wp-content/uploads/2021/05/IMG-20210510-WA0008-e1685103112693-768x577.jpg'),
  filename: 'bateau_4', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
)
boat_4.user = User.all.sample
boat_4.save

boat_5 = Boat.new(name: "Serendipity", capacity: 42, category: "Yatch", price: 9350, address: "Bois des Cèdres, 1007 Lausanne")
boat_5.photo.attach(
  io: URI.open('https://www.perfectyachtcharter.com/wp-content/uploads/2017/07/serendipity-yacht-charter.jpg'),
  filename: 'bateau_5', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
)
boat_5.user = User.all.sample
boat_5.save

boat_6 = Boat.new(name: "Aurora", capacity: 120, category: "Sail boat", price: 8000, address: "Libreville")
boat_6.photo.attach(
  io: URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/SV_Europa_barque_2007-07_A.jpg/800px-SV_Europa_barque_2007-07_A.jpg'),
  filename: 'bateau_6', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
)
boat_6.user = User.all.sample
boat_6.save

boat_7 = Boat.new(name: "Dream Weaver", capacity: 50, category: "Barge", price: 150, address: "Brest")
boat_7.photo.attach(
  io: URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Nile_Tour_Boat_R02.jpg/800px-Nile_Tour_Boat_R02.jpg'),
  filename: 'bateau_7', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
)
boat_7.user = User.all.sample
boat_7.save

boat_8 = Boat.new(name: "Sail La Vie", capacity: 60, category: "Cruiser", price: 5000, address: "Buenos Aires")
boat_8.photo.attach(
  io: URI.open('https://upload.wikimedia.org/wikipedia/commons/9/91/U534.jpg'),
  filename: 'bateau_8', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
)
boat_8.user = User.all.sample
boat_8.save

boat_9 = Boat.new(name: "Little King", capacity: 6, category: "Fishing boat", price: 10, address: "Brest")
boat_9.photo.attach(
  io: URI.open('https://i.insider.com/5d03ffbddaa4820c105c8d23'),
  filename: 'bateau_9', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
)
boat_9.user = User.all.sample
boat_9.save

boat_10 = Boat.new(name: "Batch_1387", capacity: 16, category: "Cruiser", price: 7000, address: "40 Av. de la République, 75011 Paris")
boat_10.photo.attach(
  io: URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Charleroi_-_Sambre_-_p%C3%A9niche_%22Atlantic%22_-_01.jpg/800px-Charleroi_-_Sambre_-_p%C3%A9niche_%22Atlantic%22_-_01.jpg'),
  filename: 'bateau_10', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
)
boat_10.user = User.all.sample
boat_10.save

boat_11 = Boat.new(name: "Black Pearl", capacity: 4, category: "Barge", price: 5000, address: "Bordeaux")
boat_11.photo.attach(
  io: URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Embarquement_radeau.png/800px-Embarquement_radeau.png'),
  filename: 'bateau_10', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
)
boat_11.user = User.all.sample
boat_11.save

puts "finished"
