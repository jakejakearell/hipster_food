class FoodTruck
  attr_reader :name,
              :inventory


  def initialize(name)
    @name = name
    @inventory= Hash.new
  end

end

#=> {#<Item:0x007f9c56740d48...> => 55, #<Item:0x007f9c565c0ce8...> => 12}
