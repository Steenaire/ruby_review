class Product
  attr_reader :name, :price, :description
  def initialize(product_hash)
    @name = product_hash[:name]
    @price = product_hash[:price]
    @description = product_hash[:description]
  end
end