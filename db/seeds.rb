# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  d = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

10.times do
  p = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

10.times do
  c = City.create(name_city: Faker::Address.city)
end

10.times do
  a = Appointment.create(doctor: Doctor.all.sample, patient: Patient.all.sample, city: City.all.sample, date: Faker::Date.backward(days: 15))
end
