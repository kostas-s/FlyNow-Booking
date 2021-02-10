# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.delete_all

Booking.delete_all
Passenger.delete_all
Flight.delete_all
a1 = Airport.create(name: 'John F. Kennedy International Airport', acronym: 'NYC/JFK', location: 'Queens, US')
a2 = Airport.create(name: 'San Francisco International Airport', acronym: 'SFO', location: 'San Francisco, US')

Flight.create(arrival_airport_id: a1.id, departure_airport_id: a2.id, date: DateTime.new(2021, 2, 15), duration: 410, flight_number: "1")
Flight.create(arrival_airport_id: a1.id, departure_airport_id: a2.id, date: DateTime.new(2021, 2, 16), duration: 400, flight_number: "2")
Flight.create(arrival_airport_id: a1.id, departure_airport_id: a2.id, date: DateTime.new(2021, 2, 17), duration: 415, flight_number: "3")
Flight.create(arrival_airport_id: a1.id, departure_airport_id: a2.id, date: DateTime.new(2021, 2, 15), duration: 415, flight_number: "4")
Flight.create(arrival_airport_id: a1.id, departure_airport_id: a2.id, date: DateTime.new(2021, 2, 16), duration: 415, flight_number: "5")
Flight.create(arrival_airport_id: a1.id, departure_airport_id: a2.id, date: DateTime.new(2021, 2, 17), duration: 425, flight_number: "6")
Flight.create(arrival_airport_id: a2.id, departure_airport_id: a1.id, date: DateTime.new(2021, 2, 15), duration: 440, flight_number: "7")
Flight.create(arrival_airport_id: a2.id, departure_airport_id: a1.id, date: DateTime.new(2021, 2, 16), duration: 445, flight_number: "8")
Flight.create(arrival_airport_id: a2.id, departure_airport_id: a1.id, date: DateTime.new(2021, 2, 17), duration: 445, flight_number: "9")
Flight.create(arrival_airport_id: a2.id, departure_airport_id: a1.id, date: DateTime.new(2021, 2, 15), duration: 460, flight_number: "10")
Flight.create(arrival_airport_id: a2.id, departure_airport_id: a1.id, date: DateTime.new(2021, 2, 16), duration: 420, flight_number: "11")
Flight.create(arrival_airport_id: a2.id, departure_airport_id: a1.id, date: DateTime.new(2021, 2, 17), duration: 424, flight_number: "12")