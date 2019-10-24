# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

city_array = []
doctor_array = []
patient_array= []

6.times do |index|

  city_array << City.create(name: Faker::Address.city)

end

6.times do |index|

  d = Doctor.create(id:index, first_name: Faker::Name.first_name, last_name: Faker::Name.middle_name, speciality:["Docteur de la tête","Docteur des pieds","Docteur du ventre","Docteur du dos"].sample, zip_code: Faker::Address.zip_code, city: city_array.sample)
  doctor_array << d
  p = Patient.create(id:index, first_name: Faker::Name.first_name, last_name: Faker::Name.middle_name, city: city_array.sample)
  patient_array << p

end


6.times do |index|

  Appointment.create(id:index, date: Faker::Time.forward(days: 28),doctor: doctor_array.sample, patient: patient_array.sample)

end
