# Bike

require_relative 'cargo'

class Bike
  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :price, :weight
  attr_accessor :rented

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo_hold = CargoHold.new
  end

  def rent!
    @rented = true
  end

  def add_cargo(item)
    @cargo_hold.add(item)
  end

  def remove_cargo(item)
    @cargo_hold.remove(item)
  end

  def pannier_remaining_capacity
    @cargo_hold.remaining_capacity
  end
end
