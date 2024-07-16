require 'rails_helper'

RSpec.describe 'ingredients index', type: :feature do
  before :each do
    @ingredient1 = Ingredient.create(name: "Eggs", cost: 5)
    @ingredient2 = Ingredient.create(name: "Noodles", cost: 3)
    @ingredient3 = Ingredient.create(name: "Cheese", cost: 7)
    @ingredient4 = Ingredient.create(name: "Milk", cost: 4)

   
  end 
  it "has the correct URL" do
    visit '/ingredients'

    expect(current_path).to eq('/ingredients')
  end
  
  # @recipe1 = Recipe.create(name: "Omlette", complexity: 2, genre: "Breakfast")
    # @recipe2 = Recipe.create(name: "MacnCheese", complexity: 3, genre: "Lunch")
    # @recipe3 = Recipe.create(name: "Pasta", complexity: 1, genre: "Dinner")

    # RecipeIngredient.create(recipe: @recipe1, ingredient: @ingredient1)
    # RecipeIngredient.create(recipe: @recipe1, ingredient: @ingredient3)
    # RecipeIngredient.create(recipe: @recipe2, ingredient: @ingredient1)
    # RecipeIngredient.create(recipe: @recipe2, ingredient: @ingredient2)
    # RecipeIngredient.create(recipe: @recipe2, ingredient: @ingredient4)
    # RecipeIngredient.create(recipe: @recipe3, ingredient: @ingredient3)

  it "should list the name and cost of the ingredients" do
    visit "/ingredients"
    expect(page).to have_content(@ingredient1.name)
    expect(page).to have_content(@ingredient2.name)
    expect(page).to have_content(@ingredient3.name)
    expect(page).to have_content(@ingredient4.name)
    expect(page).to have_content(@ingredient1.cost)
    expect(page).to have_content(@ingredient2.cost)
    expect(page).to have_content(@ingredient3.cost)
    expect(page).to have_content(@ingredient4.cost)
  end
end
