module Honk
  def honk_horn
    puts "Beeeeeeep!"
  end
end

module Bell
  def ring_bell
    puts "Ring ring!"
  end
end

module Vehicle #WHY DOES THIS WORK???
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

class Car
  include Honk, Vehicle
  attr_reader :charge, :make, :model

  def initialize
    super
    @charge = 50
    @make = "Nissan"
    @model = "Leaf"
  end

end

class Bike
  include Bell, Vehicle
  attr_reader :speed, :type, :weight

  def initialize
    super
    @speed = 0
    @type = "freewheel"
    @weight = 500
  end

end

car = Car.new
bike = Bike.new

car.honk_horn
bike.ring_bell

puts bike.speed
bike.accelerate
puts bike.speed
bike.accelerate
bike.accelerate
puts bike.speed