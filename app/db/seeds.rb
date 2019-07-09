User.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all
Type.destroy_all
CocktailIngredient.destroy_all


# Type.all.destroy
# Ingredient.all.destroy

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

12.times {User.create(name: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password_digest: Faker::Internet.password)}


Cocktail.create(name: "New cocktail", recipe: "New recipe", user_id: User.first.id)

Type.create(name: "spirit")
Type.create(name: "garnish")
Type.create(name: "mixer")

Ingredient.create(name: "Vodka", type_id: Type.first)
Ingredient.create(name: "Gin", type_id: Type.first)
Ingredient.create(name: "Whisky", type_id: Type.first)
Ingredient.create(name: "Scotch Whisky", type_id: Type.first)
Ingredient.create(name: "Bourbon", type_id: Type.first)
Ingredient.create(name: "Tequila", type_id: Type.first)
Ingredient.create(name: "White Rum", type_id: Type.first)
Ingredient.create(name: "Dark Rum", type_id: Type.first)
Ingredient.create(name: "Spiced Rum", type_id: Type.first)
Ingredient.create(name: "Cointreau", type_id: Type.first)
Ingredient.create(name: "Brandy", type_id: Type.first)
Ingredient.create(name: "Baileys", type_id: Type.first)
Ingredient.create(name: "Aperol", type_id: Type.first)
Ingredient.create(name: "Martini Bianco", type_id: Type.first)
Ingredient.create(name: "Kahlua", type_id: Type.first)

Ingredient.create(name: "Lime", type_id: Type.second)
Ingredient.create(name: "Lemon", type_id: Type.second)
Ingredient.create(name: "Orange", type_id: Type.second)
Ingredient.create(name: "Mint", type_id: Type.second)
Ingredient.create(name: "Olives", type_id: Type.second)
Ingredient.create(name: "Coffee Beans", type_id: Type.second)
Ingredient.create(name: "Sugar", type_id: Type.second)
Ingredient.create(name: "Salt", type_id: Type.second)
Ingredient.create(name: "Black Pepper", type_id: Type.second)
Ingredient.create(name: "Cherry", type_id: Type.second)
Ingredient.create(name: "Celery", type_id: Type.second)
Ingredient.create(name: "Egg White", type_id: Type.second)
Ingredient.create(name: "Banana", type_id: Type.second)
Ingredient.create(name: "Strawberry", type_id: Type.second)
Ingredient.create(name: "Pineapple", type_id: Type.second)
Ingredient.create(name: "Apple", type_id: Type.second)
Ingredient.create(name: "Whipped Cream", type_id: Type.second)
Ingredient.create(name: "Raspberry", type_id: Type.second)
Ingredient.create(name: "Rosemary", type_id: Type.second)
Ingredient.create(name: "Angostura Bitters", type_id: Type.second)

Ingredient.create(name: "Coca Cola", type_id: Type.third)
Ingredient.create(name: "Soda", type_id: Type.third)
Ingredient.create(name: "Lemonade", type_id: Type.third)
Ingredient.create(name: "Orange Juice", type_id: Type.third)
Ingredient.create(name: "Cranberry Juice", type_id: Type.third)
Ingredient.create(name: "Apple Juice", type_id: Type.third)
Ingredient.create(name: "Espresso", type_id: Type.third)
Ingredient.create(name: "Milk", type_id: Type.third)
Ingredient.create(name: "Tomato Juice", type_id: Type.third)
Ingredient.create(name: "Pineapple Juice", type_id: Type.third)
Ingredient.create(name: "Tonic Water", type_id: Type.third)
Ingredient.create(name: "Ginger Beer", type_id: Type.third)
Ingredient.create(name: "Bitter Lemon", type_id: Type.third)
