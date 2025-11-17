# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Animal.destroy_all

Animal.create([
  {
    name: "Max",
    species: "Dog",
    breed: "Golden Retriever",
    age: 3,
    intake_date: 2.months.ago,
    adopted: false,
    notes: "Very friendly and good with children. Loves to play fetch."
  },
  {
    name: "Luna",
    species: "Cat",
    breed: "Siamese",
    age: 2,
    intake_date: 3.weeks.ago,
    adopted: true,
    notes: "Quiet and affectionate. Likes to stay inside."
  },
  {
    name: "Charlie",
    species: "Dog",
    breed: "Beagle",
    age: 5,
    intake_date: 1.month.ago,
    adopted: false,
    notes: "Energetic and curious. Requires exercise regularly."
  },
  {
    name: "Whiskers",
    species: "Cat",
    breed: "Tabby",
    age: 1,
    intake_date: 2.weeks.ago,
    adopted: false,
    notes: "Playful kitten, loves toys and climbing."
  },
  {
    name: "Buddy",
    species: "Dog",
    breed: "Labrador",
    age: 4,
    intake_date: 5.days.ago,
    adopted: false,
    notes: "Well trained and obedient. Great family dog."
  }
])

puts "Created #{Animal.count} animals"