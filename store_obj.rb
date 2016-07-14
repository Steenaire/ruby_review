class Pet < Product

  def initialize(pet_hash)
    super
    @name = pet_hash[:name]
    @color = pet_hash[:color]
    @breed = pet_hash[:breed]
  end

  def name
    @name
  end

  def color
    @color
  end

  def breed
    @breed
  end

  def name=(name)
    @name = name
  end

  def color=(color)
    @color = color
  end

  def breed=(breed)
    @breed = breed
  end

end

class Product
  attr_reader :name, :price, :description
  def initialize(product_hash)
    @name = product_hash[:name]
    @price = product_hash[:price]
    @description = product_hash[:description]
  end
end

class Food < Product
  attr_reader :shelf_life
  def initialize(product_hash)
    super
    @shelf_life = product_hash[:shelf_life]
  end
end

dog1 = Pet.new({name: "Fifi", color: "white", breed: "pommeranian"})

puts "name: #{dog1.name}, color: #{dog1.color}, breed: #{dog1.breed}"

dog1.breed="husky"

puts "name: #{dog1.name}, color: #{dog1.color}, breed: #{dog1.breed}"

food = Food.new({name: "Ice Cream", price: 5, description: "A frozen treat", shelf_life: 10})

puts food.name, food.price, food.description, food.shelf_life