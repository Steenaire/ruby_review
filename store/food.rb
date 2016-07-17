class Food < Product
  attr_reader :shelf_life
  def initialize(product_hash)
    super
    @shelf_life = product_hash[:shelf_life]
  end
end