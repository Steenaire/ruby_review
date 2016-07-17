require_relative "product"
require_relative "food"
require_relative "pet"

dog1 = Pet.new({name: "Fifi", color: "white", breed: "pommeranian"})

puts "name: #{dog1.name}, color: #{dog1.color}, breed: #{dog1.breed}"

dog1.breed="husky"

puts "name: #{dog1.name}, color: #{dog1.color}, breed: #{dog1.breed}"

food = Food.new({name: "Ice Cream", price: 5, description: "A frozen treat", shelf_life: 10})

print "Name: #{food.name} Price: #{food.price} Description: #{food.description} Shelf Life: #{food.shelf_life} month(s)"