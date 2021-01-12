class Item
  attr_reader :info,
              :name

  def initialize(info)
    @name = info[:name]
    @price = info[:price]
  end

  def price
    @price[1..-1].to_f
  end

end
