require_relative '../lib/ticket'

class Gate
  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.register_stamp(@name)
  end

  def exit(ticket)
    fare = ticket.fare
    station_name = ticket.stamped_at

    if @name == station_name 
      return false
    end

    if (@name == :umeda && station_name == :mikuni) || (@name == :mikuni && station_name == :umeda)
      return fare >= 190
    end

    fare >= 160

  end
end