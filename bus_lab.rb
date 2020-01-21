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
    for passenger in bus_stop.queue
      pick_up_passenger(passenger)
    end
    for passenger in @passengers
      bus_stop.remove_from_queue (passenger)
    end
    # This only worked when I created seperate for loops. Otherwise it would skip one of the entries, is there a reason why this is?
  end

end
