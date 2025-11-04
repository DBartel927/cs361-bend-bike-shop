class CargoHold
  MAX_CAPACITY = 10

  def initialize
    @contents = []
  end

  def add(item)
    return false if full?
    @contents << item
    true
  end

  def remove(item)
    @contents.delete(item)
  end

  def remaining_capacity
    MAX_CAPACITY - @contents.size
  end

  def full?
    @contents.size >= MAX_CAPACITY
  end
end
