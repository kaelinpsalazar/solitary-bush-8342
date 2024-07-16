# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ingredient1 = Ingredient.create(name: "Eggs", cost: 5)
ingredient2 = Ingredient.create(name: "Noodles", cost: 3)
ingredient3 = Ingredient.create(name: "Cheese", cost: 7)
ingredient4 = Ingredient.create(name: "Milk", cost: 4)

# Create Recipes
recipe1 = Recipe.create(name: "Omlette", complexity: 2, genre: "Breakfast")
recipe2 = Recipe.create(name: "MacnCheese", complexity: 3, genre: "Lunch")
recipe3 = Recipe.create(name: "Pasta", complexity: 1, genre: "Dinner")

# Create RecipeIngredients (associations)
RecipeIngredient.create(recipe: recipe1, ingredient: ingredient1)
RecipeIngredient.create(recipe: recipe1, ingredient: ingredient3)
RecipeIngredient.create(recipe: recipe2, ingredient: ingredient1)
RecipeIngredient.create(recipe: recipe2, ingredient: ingredient2)
RecipeIngredient.create(recipe: recipe2, ingredient: ingredient4)
RecipeIngredient.create(recipe: recipe3, ingredient: ingredient3)
