class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle

  def initialize
    super
    @charge = 50
    @make = Nissan
    @model = Leaf
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle

  def speed
    @speed = "single"
    @type = "freewheel"
    @weight = 500
  end

  def ring_bell
    puts "Ring ring!"
  end
end

class Spaceship < Vehicle
  def captains_log
    puts "Captain's Log, star date 2124235..."
  end
end

class Enterprise < Spaceship
  def no_one
    puts "To boldly go where no one has gone before!"
  end
end

car = Car.new
bike = Bike.new
ship = Spaceship.new
enterprise = Enterprise.new

car.honk_horn
bike.ring_bell
enterprise.captains_log
enterprise.no_one

puts Enterprise.ancestors