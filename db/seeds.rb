# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
mojito_file = URI.open('https://images.unsplash.com/photo-1546171753-97d7676e4602?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80);}')
bloody_mary_file = URI.open('https://images.unsplash.com/photo-1576874208717-bfe3af939a4d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80);')
margarita_file = URI.open('https://images.unsplash.com/photo-1556855810-ac404aa91e85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80);')
Ingredient.create(name: "vodka")
Ingredient.create(name: "tomato juice")
Ingredient.create(name: "mint leaves")
mojito = Cocktail.new(name: "Mojito")
mojito.photo.attach(io:mojito_file, filename: "#{mojito}.jpg", content_type: 'image/jpg')
bloody_mary = Cocktail.new(name: "Bloody Mary")
bloody_mary.photo.attach(io:bloody_mary_file, filename: "#{bloody_mary}.jpg", content_type: 'image/jpg')
margarita = Cocktail.new(name: "Margarita")
margarita.photo.attach(io:margarita_file, filename: "#{margarita}.jpg", content_type: 'image/jpg')
mojito.save
bloody_mary.save
margarita.save
Dose.create(description: "6 leaves", cocktail_id: 1, ingredient_id: 3)
Dose.create(description: "90ml", cocktail_id: 2, ingredient_id: 2)
Dose.create(description: "30ml", cocktail_id: 2, ingredient_id: 1)
