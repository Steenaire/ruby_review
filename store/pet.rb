class Pet < Product

  attr_accessor :name, :color, :breed

  def initialize(pet_hash)
    super
    @name = pet_hash[:name]
    @color = pet_hash[:color]
    @breed = pet_hash[:breed]
  end

end