require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/Event'

class EventTest < Minitest::Test
  def setup
    @event = Event.new
  end

  def test_it_exists
    assert_instance_of Event, @event
  end

  def test_it_has_attributes
    assert_equal "filler", @event.filler
  end

  def test_it_can_have_different_attributes
  end

end
