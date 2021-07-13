# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

25.times do
    name = Faker::Name.unique.name
    phone_number = Faker::PhoneNumber.cell_phone 
    email =  Faker::Internet.free_email
    Veterinarian.create(name: name, phone_number: phone_number, email: email)
    puts "Created #{name} and here is there phone number:  #{phone_number} and email #{email}"
end 