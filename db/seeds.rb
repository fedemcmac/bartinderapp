Comment.destroy_all
Like.destroy_all
CocktailIngredient.destroy_all
Cocktail.destroy_all
User.destroy_all
Ingredient.destroy_all
Type.destroy_all
Glass.destroy_all


# Type.all.destroy
# Ingredient.all.destroy

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

12.times {User.create(name: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password_digest: "cocktail")}


Type.create(name: "spirit")
Type.create(name: "garnish")
Type.create(name: "mixer")

Ingredient.create(name: "Vodka", type_id: Type.first.id)
Ingredient.create(name: "Gin", type_id: Type.first.id)
Ingredient.create(name: "Whisky", type_id: Type.first.id)
Ingredient.create(name: "Scotch Whisky", type_id: Type.first.id)
Ingredient.create(name: "Bourbon", type_id: Type.first.id)
Ingredient.create(name: "Tequila", type_id: Type.first.id)
Ingredient.create(name: "White Rum", type_id: Type.first.id)
Ingredient.create(name: "Dark Rum", type_id: Type.first.id)
Ingredient.create(name: "Spiced Rum", type_id: Type.first.id)
Ingredient.create(name: "Cointreau", type_id: Type.first.id)
Ingredient.create(name: "Brandy", type_id: Type.first.id)
Ingredient.create(name: "Baileys", type_id: Type.first.id)
Ingredient.create(name: "Aperol", type_id: Type.first.id)
Ingredient.create(name: "Champagne", type_id: Type.first.id)
Ingredient.create(name: "Martini Bianco", type_id: Type.first.id)
Ingredient.create(name: "Kahlua", type_id: Type.first.id)

Ingredient.create(name: "Lime", type_id: Type.second.id)
Ingredient.create(name: "Lemon", type_id: Type.second.id)
Ingredient.create(name: "Orange", type_id: Type.second.id)
Ingredient.create(name: "Mint", type_id: Type.second.id)
Ingredient.create(name: "Olives", type_id: Type.second.id)
Ingredient.create(name: "Coffee Beans", type_id: Type.second.id)
Ingredient.create(name: "Sugar", type_id: Type.second.id)
Ingredient.create(name: "Salt", type_id: Type.second.id)
Ingredient.create(name: "Black Pepper", type_id: Type.second.id)
Ingredient.create(name: "Cherry", type_id: Type.second.id)
Ingredient.create(name: "Celery", type_id: Type.second.id)
Ingredient.create(name: "Egg White", type_id: Type.second.id)
Ingredient.create(name: "Banana", type_id: Type.second.id)
Ingredient.create(name: "Strawberry", type_id: Type.second.id)
Ingredient.create(name: "Pineapple", type_id: Type.second.id)
Ingredient.create(name: "Apple", type_id: Type.second.id)
Ingredient.create(name: "Whipped Cream", type_id: Type.second.id)
Ingredient.create(name: "Raspberry", type_id: Type.second.id)
Ingredient.create(name: "Rosemary", type_id: Type.second.id)
Ingredient.create(name: "Angostura Bitters", type_id: Type.second.id)

Ingredient.create(name: "Coca Cola", type_id: Type.third.id)
Ingredient.create(name: "Soda", type_id: Type.third.id)
Ingredient.create(name: "Lemonade", type_id: Type.third.id)
Ingredient.create(name: "Orange Juice", type_id: Type.third.id)
Ingredient.create(name: "Cranberry Juice", type_id: Type.third.id)
Ingredient.create(name: "Apple Juice", type_id: Type.third.id)
Ingredient.create(name: "Espresso", type_id: Type.third.id)
Ingredient.create(name: "Milk", type_id: Type.third.id)
Ingredient.create(name: "Tomato Juice", type_id: Type.third.id)
Ingredient.create(name: "Pineapple Juice", type_id: Type.third.id)
Ingredient.create(name: "Tonic Water", type_id: Type.third.id)
Ingredient.create(name: "Ginger Beer", type_id: Type.third.id)
Ingredient.create(name: "Bitter Lemon", type_id: Type.third.id)

Glass.create(name: "Highball", url: "Highball.jpeg")
Glass.create(name: "Rocks", url: "Rocks.jpeg")
Glass.create(name: "Martini", url: "Martini.jpeg")
Glass.create(name: "Coupe", url: "Coupe.jpeg")
Glass.create(name: "Shot", url: "Shot.jpeg")
Glass.create(name: "Champagne", url: "Champagne.jpeg")
#

<<<<<<< HEAD
# glasses = [
#  {name: "Highball", url: Rails.root.join("app/images/Highball.png")},
#  {name: "Rocks", url: Rails.root.join("app/images/Rocks.png")},
#  {name: "Martini", url: Rails.root.join("app/images/Martini.png")},
#  {name: "Coupe", url: Rails.root.join("app/images/Coupe.png")},
#  {name: "Shot", url: Rails.root.join("app/images/Shot.png")},
#  {name: "Champagne", url: Rails.root.join("app/images/Champagne.png")}]
#
# glass.each do |img|
#   Glass.find_or_create_by(url: img.url, name: img.name)
# end
=======
Cocktail.create(name: "Manhattan", recipe: Faker::Food.unique.description, user_id: User.all.sample.id)
Cocktail.create(name: "Bloody Mary", recipe: Faker::Food.unique.description, user_id: User.all.sample.id)
Cocktail.create(name: "Margarita", recipe: Faker::Food.unique.description, user_id: User.all.sample.id)
Cocktail.create(name: "Old Fashioned", recipe: Faker::Food.unique.description, user_id: User.all.sample.id)
Cocktail.create(name: "Mojito", recipe: Faker::Food.unique.description, user_id: User.all.sample.id)
Cocktail.create(name: "Daiquiri", recipe: Faker::Food.unique.description, user_id: User.all.sample.id)
Cocktail.create(name: "Gin and Tonic", recipe: Faker::Food.unique.description, user_id: User.all.sample.id)
Cocktail.create(name: "Negroni", recipe: Faker::Food.unique.description, user_id: User.all.sample.id)
Cocktail.create(name: "Aperol Spritz", recipe: Faker::Food.unique.description, user_id: User.all.sample.id)


36.times{CocktailIngredient.create(cocktail_id: Cocktail.all.sample.id, ingredient_id: Ingredient.all.sample.id)}


puts "SEEDED"
>>>>>>> 34a460f6e3ca266d9c012c80af1b373c7d20412c
