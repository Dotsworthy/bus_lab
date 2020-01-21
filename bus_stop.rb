class BusStop

  attr_reader :stop_name

  def initialize(stop_name)
    @stop_name = stop_name
    @queue = []
  end

  def queue_count
    @queue.count
  end

  def add_to_queue(passenger)
    @queue.push(passenger)
  end

  def remove_from_queue(passenger)
    @queue.delete(passenger)
  end

end
