class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def dispense(vessel = Vessel.new)
  drain(vessel.volume)
  end

  def drain(vessel_volume)
    if @reservoir <= vessel_volume 
      # TODO --- EROR- fix
      @reservoir = @reservoir - vessel_volume 
      puts "dispensed amount: #{vessel_volume}"
      vessel_volume
    else
      puts "INVALID: cannot dispense more than what is inside the reservoir"
    end
  end

end
