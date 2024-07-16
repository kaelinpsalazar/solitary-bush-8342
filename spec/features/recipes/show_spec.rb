# spec/features/recipes/show_spec.rb
require 'rails_helper'

RSpec.describe 'Recipe Show', type: :feature do
  before :each do

    @ingredient1 = Ingredient.create(name: "Eggs", cost: 5)
    @ingredient2 = Ingredient.create(name: "Noodles", cost: 3)
    @ingredient3 = Ingredient.create(name: "Cheese", cost: 7)
    @ingredient4 = Ingredient.create(name: "Milk", cost: 4)

    @recipe1 = Recipe.create(name: "Omlette", complexity: 2, genre: "Breakfast")
    @recipe2 = Recipe.create(name: "MacnCheese", complexity: 3, genre: "Lunch")
    @recipe3 = Recipe.create(name: "Pasta", complexity: 1, genre: "Dinner")

    RecipeIngredient.create(recipe: @recipe1, ingredient: @ingredient1)
    RecipeIngredient.create(recipe: @recipe1, ingredient: @ingredient3)
    RecipeIngredient.create(recipe: @recipe2, ingredient: @ingredient1)
    RecipeIngredient.create(recipe: @recipe2, ingredient: @ingredient2)
    RecipeIngredient.create(recipe: @recipe2, ingredient: @ingredient4)

  end

  it ' uses the correct id' do 
    visit "/recipes/#{@recipe1.id}"
    expect(page).to have_current_path("/recipes/#{@recipe1.id}")
    
    visit "/recipes/#{@recipe2.id}"
    expect(page).to have_current_path("/recipes/#{@recipe2.id}")
  end
  it 'shows name of recipee' do 
    visit "/recipes/#{@recipe1.id}"
    expect(page).to have_content(@recipe1.name)
  end
  it 'shows ingredients' do 
    visit "/recipes/#{@recipe1.id}"
    expect(page).to have_content(@ingredient1.name)
    expect(page).to have_content(@ingredient3.name)
  end
  

  it 'shows recipe attributes' do 
    visit "/recipes/#{@recipe1.id}"
    expect(page).to have_content(@recipe1.complexity)
    expect(page).to have_content(@recipe1.genre)
  end


  it 'shows total cost' do 
    visit "/recipes/#{@recipe1.id}"
    expect(page).to have_content(@recipe1.total_cost)
    expect(page).to have_content("Total Cost: 12")
  end
end
