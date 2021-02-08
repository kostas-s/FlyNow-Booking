# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.delete_all
Flight.delete_all
a1 = Airport.create(name: 'Hartsfield-Jackson', acronym: 'ATL/KATL', location: 'Atlanta, Georgia, US')
a2 = Airport.create(name: 'Beijing Capital', acronym: 'PEK/ZBAA', location: 'Chaoyung-Shunyi, China')
a3 = Airport.create(name: 'Los Angeles International Airport', acronym: 'LAX/KLAX', location: 'Los Angeles, California')

Flight.create(arrival_airport: a1, departure_airport: a2, date: DateTime.now)
