class FoodTruck
  attr_reader :name,
              :inventory


  def initialize(name)
    @name = name
    @inventory= Hash.new
  end

  def check_stock(item)
    if @inventory[item].nil?
      @inventory[item] = 0
    else
      @inventory[item]
    end
  end

  def stock(item, quantity)
    if @inventory[item].nil?
      @inventory[item] = quantity
    else
      @inventory[item] += quantity
    end
  end


  def potential_revenue
    self.inventory.map do |item, quantity|
      item.price * quantity
    end.sum
  end
end

#=> {#<Item:0x007f9c56740d48...> => 55, #<Item:0x007f9c565c0ce8...> => 12}
