require 'json'
require 'open-uri'

puts "destroying all existing record"
Cocktail.destroy_all

puts "creating new database"

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_raw = open(url).read
ingredient_json = JSON.parse(ingredient_raw)

ingredient_json["drinks"].each_with_index do |name, index|
  ingredients = Ingredient.new(name: name["strIngredient1"])
  ingredients.save
  break if index == 10
end


puts "Seeding completed"
