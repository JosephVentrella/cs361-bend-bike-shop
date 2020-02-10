# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :cargo

  def initialize(id, color, price, weight = STANDARD_WEIGHT, cargo = [] )
    @id = id
    @color = color
    @price = price
    @weight = weight
    @cargo = Cargo.new(cargo)
  end


end

class Cargo

    MAX_CARGO_ITEMS = 10

  attr_accessor :contents

  def initialize(cargo = [])
    @contents = cargo
  end

  def add(item)
    self.contents << item
  end

  def remove(item)
    self.contents.remove(item)
  end

  def capacity
    MAX_CARGO_ITEMS
  end

  def remaining_capacity
    MAX_CARGO_ITEMS - self.contents.size
  end

end

class Rental

  def initialize(bike)
    @bike = bike
  end

end



