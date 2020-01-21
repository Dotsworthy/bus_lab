class Bus

  attr_reader :route, :destination

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum Brum"
  end

  def number_of_passengers()
    return @passengers.count
  end

  def pick_up_passenger(new_passenger)
    @passengers.push(new_passenger)
  end

  def drop_off_passenger(passenger_on_bus)
    @passengers.delete(passenger_on_bus)
  end

  def remove_all_passengers(passengers)
      for passenger in @passengers
        drop_off_passenger(passenger)
      end
  end

  def pick_up_passengers_from_bus_stop(bus_stop)
    for passenger in @bus_stop1
      pick_up_passenger(passenger)
      bus_stop1.remove_from_queue()
    end
  end

end
