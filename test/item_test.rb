require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/item'

class ItemTest < Minitest::Test

  def setup
    @item = Item.new({:name => "Apple Pie", :price => "$2.50"})
  end

  def test_it_exists
    assert_instance_of Item, @item
  end

  def test_it_has_attributes
    assert_equal "Apple Pie", @item.name
    assert_equal 2.50, @item.price
  end
end
