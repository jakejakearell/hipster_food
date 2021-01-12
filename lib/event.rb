class Event
  attr_reader :name,
              :food_trucks


  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |truck|
      truck.inventory.include? item
    end
  end


  def sorted_item_list
    self.food_trucks.flat_map do |truck|
      truck.inventory.flat_map do |inventory|
        inventory[0].name
      end
    end.uniq
  end

  def total_inventory
    self.food_trucks.reduce(Hash.new) do |memo, truck|
      truck.inventory.each do |item|
        if memo[item].nil?
          memo[item] ={food_truck: [truck],
                      quantity: item.last}
        elsif memo[item]
          memo[item][:quantity] += item.last
        end
      end
    memo
    end
  end
end
