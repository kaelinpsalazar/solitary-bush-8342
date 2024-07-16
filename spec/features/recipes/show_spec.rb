require 'rails_helper'

RSpec.describe 'Recipes Index', type: :feature do
  before :each do
    @recipe1 = Recipe.create(name: "Omlette", complexity: 2, genre: "Breakfast")
    @recipe2 = Recipe.create(name: "MacnCheese", complexity: 3, genre: "Lunch")
    @recipe3 = Recipe.create(name: "Pasta", complexity: 1, genre: "Dinner")
  end

  it "has the correct URL" do
    visit '/recipes'

    expect(current_path).to eq('/recipes')
  end

  it "should list the name, complexity, and genre of each recipe" do
    visit "/recipes"
    expect(page).to have_content(@recipe1.name)
    expect(page).to have_content(@recipe1.complexity)
    expect(page).to have_content(@recipe1.genre)

    expect(page).to have_content(@recipe2.name)
    expect(page).to have_content(@recipe2.complexity)
    expect(page).to have_content(@recipe2.genre)

    expect(page).to have_content(@recipe3.name)
    expect(page).to have_content(@recipe3.complexity)
    expect(page).to have_content(@recipe3.genre)
  end
end