require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/food_truck'

class FoodTruckTest < Minitest::Test
  def setup
    @food_truck = FoodTruck.new
  end

  def test_it_exists
    assert_instance_of FoodTruck, @food_truck
  end

  # def test_it_has_attributes
  #   assert_equal "filler", @food_truck.filler
  # end
  #
  # def test_it_can_have_different_attributes
  # end

end
