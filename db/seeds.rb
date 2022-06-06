# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
300.times do |index|
    Employee.create!(name: Faker::Name.name,
                  image: Faker::Avatar.image,
                  age: Faker::Number.between(from: 15, to: 25),
                  character_class: Faker::String.random(length: 4))
end
  p "Created #{Employee.count} movies"