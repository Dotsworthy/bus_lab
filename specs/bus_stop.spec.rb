require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../bus_stop')
require_relative('../person')
require_relative('../bus_lab')

class BusStopTest < Minitest::Test

  def setup()
    @bus_stop1 = BusStop.new("Leith Street")

    @passenger1 = Person.new("Doris", 32)
    @passenger2 = Person.new("Malcolm", 29)
    @passenger3 = Person.new("Andy", 28)

    @passengers = [@passenger1, @passenger2, @passenger3]
  end

  def test_get_stop_name
    assert_equal("Leith Street", @bus_stop1.stop_name)
  end

  def test_get_queue_size
    assert_equal(0, @bus_stop1.queue_count)
  end

  def test_add_to_queue
    @bus_stop1.add_to_queue(@passenger1)
    assert_equal(1, @bus_stop1.queue_count)
  end
  def test_remove_from_queue
    @bus_stop1.remove_from_queue(@passenger1)
    assert_equal(0, @bus_stop1.queue_count)
  end




end
