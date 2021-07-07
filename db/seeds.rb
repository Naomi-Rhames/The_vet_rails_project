# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

response = RestClient.get("https://api.thedogapi.com/v1/breeds")
breeds_array = JSON.parse(response)

breeds_array.each do |dog|
    @dog = Dog.new(name: dog["name"], life_span: dog["life_span"], origin: dog["origin"], temperament: dog["temperament"], description: dog["description"], image: dog["image"]["url"])
    @dog.save
     binding.pry
    end

