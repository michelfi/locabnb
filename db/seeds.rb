# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying all users"
User.destroy_all
puts "Creating a user"
user1 = User.create!(email: "michel@gmail.com", password: "azerty", avatar: "https://i.ibb.co/qk9cp8w/te-le-chargement-4.jpg")
puts "User created !"
user2 = User.create!(email: "janine@gmail.com", password: "azerty", avatar: "https://i.ibb.co/hcC2SHK/te-le-chargement.jpg")
user3 = User.create!(email: "louisette@gmail.com", password: "azerty", avatar: "https://i.ibb.co/nzMsTTv/te-le-chargement-3.jpg")
user4 = User.create!(email: "enzo@gmail.com", password: "azerty", avatar: "https://i.ibb.co/12NX2PX/te-le-chargement-1.jpg")
user5 = User.create!(email: "jacques@gmail.com", password: "azerty", avatar: "https://i.ibb.co/D1BMGLn/te-le-chargement-5.jpg")
user6 = User.create!(email: "kenza@gmail.com", password: "azerty", avatar: "https://i.ibb.co/gRjzL2M/te-le-chargement-2.jpg")
user7 = User.create!(email: "karen@gmail.com", password: "azerty", avatar: "https://i.ibb.co/mR72h8L/te-le-chargement-6.jpg")
user8 = User.create!(email: "tom@gmail.com", password: "azerty", avatar: "https://i.ibb.co/bR6Z8BJ/te-le-chargement.jpg")

puts "Destroying all cars"
Car.destroy_all
puts "Creating all cars"

Car.create!(brand: "Audi", model: "A3", year_of_production: 2014, address: "Paris", price_per_day: 50, banner: "https://i.ibb.co/r6y64rH/car-604019-1280.jpg", user_id: user1.id)
puts "Car 1 created !"
Car.create!(brand: "Peugeot", model: "103", year_of_production: 2008, address: "Le Mans", price_per_day: 45, banner: "https://i.ibb.co/mq9JKHM/voiture-de-sport.webp", user_id: user2.id)
puts "Car 2 created !"
Car.create!(brand: "BMW", model: "Série 4", year_of_production: 2007, address: "Lyon", price_per_day: 70, banner: "https://i.ibb.co/RH1FVth/voiture-moderne-ge-ne-rique-de-suv-dans-le-garage-en-be-ton.webp", user_id: user3.id)
puts "Car 3 created !"
Car.create!(brand: "Citroen", model: "Saxo", year_of_production: 2013, address: "Bordeaux", price_per_day: 40, banner: "https://i.ibb.co/b7vD1X7/voiture-verte-de-benley.webp", user_id: user4.id)
puts "Car 4 created !"
Car.create!(brand: "Wolkswagen", model: "Serie S", year_of_production: 2017, address: "Lyon", price_per_day: 65, banner: "https://i.ibb.co/4gDL5k7/les-voitures-electriques-ici-la-volkswagen-id5-sont-plus-simples-mecaniquement-que-les-thermiques-16.jpg", user_id: user5.id)
puts "Car 5 created !"
Car.create!(brand: "Nissan", model: "Ultra", year_of_production: 2012, address: "Rouen", price_per_day: 55, banner: "https://i.ibb.co/x76x6y8/banniere.jpg", user_id: user6.id)
puts "Car 6 created !"
Car.create!(brand: "Peugeot", model: "608", year_of_production: 2016, address: "Toulouse", price_per_day: 50, banner: "https://i.ibb.co/bbCRpVG/peugeot-308-sw-2021-4x3.webp", user_id: user7.id)
puts "Car 7 created !"
Car.create!(brand: "Citroen", model: "Saxo", year_of_production: 2013, address: "Bordeaux", price_per_day: 40, banner: "https://i.ibb.co/BnFvFrG/S8-youngtimers-quel-prix-aujourd-hui-pour-une-renault-supercinq-718545.jpg", user_id: user8.id)
puts "Car 8 created !"
puts "All cars created !"

puts "Destroying all bookings"
Booking.destroy_all
puts "Finished !"
