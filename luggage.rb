class Luggage

  DEFAULT_MAX_CAPACITY = 10
  
  ITEM_WEIGHT = 10

  attr_reader :items, :capacity

  def initialize(initial_capacity, items)
    @capacity = initial_capacity
    @items = items
  end

  def add(item)
    @items << item if @items.size < @capacity
  end

  def weight
    @items.size * ITEM_WEIGHT
  end
end