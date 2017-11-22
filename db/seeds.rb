# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create!(name: "Miam", category: "french", address: "14 rue de Sévigné 75008 Paris", phone_number: "01-01-01-01-01")
Restaurant.create!(name: "A la bonne table", category: "italian", address: "12 rue de la République Lyon", phone_number: "02-01-01-01-02")
Restaurant.create!(name: "FourMachette", category: "chinese", address: "23 rue Montcul", phone_number: "03-01-01-01-03")
Restaurant.create!(name: "Couteau ou tard", category: "japanese", address: "23 rue de Sévigné", phone_number: "04-01-01-01-04")
Restaurant.create!(name: "Cuillère et demain", category: "french", address: "45 rue de Sévigné", phone_number: "05-01-01-01-05")
