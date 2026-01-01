class Ticket
  attr_reader :stamped_at, :fare

  def initialize(fare)
    @fare = fare
  end

  def register_stamp(station_name)
    @stamped_at = station_name
  end
end
