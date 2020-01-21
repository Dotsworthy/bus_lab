require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus_lab')
require_relative('../person')
require_relative('../bus_stop')

class BusTest < Minitest::Test

  def setup
    @bus1 = Bus.new(22, "Ocean Terminal")

    @passenger1 = Person.new("Doris", 32)
    @passenger2 = Person.new("Malcolm", 29)
    @passenger3 = Person.new("Andy", 28)

    @total_passengers = [@passenger1, @passenger2, @passenger3]
  end

  def test_get_route_of_bus
    assert_equal(22, @bus1.route)
  end

  def test_get_destination_of_bus
    assert_equal("Ocean Terminal", @bus1.destination)
  end

  def test_drive_method
    assert_equal("Brum Brum", @bus1.drive)
  end

  def test_number_of_passengers
    assert_equal(0, @bus1.number_of_passengers)
  end

  def test_pick_up_passenger
    @bus1.pick_up_passenger(@passenger1)
    assert_equal(1, @bus1.number_of_passengers)
  end

  def test_passenger_drop_off
    @bus1.drop_off_passenger(@passenger1)
    assert_equal(0, @bus1.number_of_passengers)
  end

  def test_remove_all_passengers

    @bus1.pick_up_passenger(@total_passengers)

    @bus1.remove_all_passengers(@total_passengers)
    assert_equal(0, @bus1.number_of_passengers)
  end

  def test_pick_up_passengers_from_stop
    @bus_stop1 = BusStop.new("Leith Street")
    @bus_stop1.add_to_queue(@passenger1)
    @bus_stop1.add_to_queue(@passenger2)
    @bus_stop1.add_to_queue(@passenger3)

    @bus1.pick_up_passengers_from_bus_stop(@bus_stop1)

    assert_equal(3, @bus1.number_of_passengers)
    assert_equal(0, @bus_stop1.queue_count)
  end

end
