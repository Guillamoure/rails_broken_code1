# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.create!(name: "Ryan")
Customer.create!(name: "Eric")
Customer.create!(name: "Nicky")
#
Meal.create!(name: "Spicy Shrimp Tacos", price: 10.99, calories: 980)
Meal.create!(name: "The Boss Burger", price: 9.99, calories: 1600)
Meal.create!(name: "Quesadilla Explosion Salad", price: 10.99, calories: 1400)
Meal.create!(name: "Southwestern Eggrolls", price: 10.99, calories: 800)
