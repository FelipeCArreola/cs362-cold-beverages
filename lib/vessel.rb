class Vessel
  attr_reader :volume, :name, :empty

  def initialize(name = '', volume = 0)
    @name = name
    @volume = volume
    volume == 0 ? @empty = true : @empty = false
  end

  def empty?
    @empty
  end

  def fill
    @volume = 100
    @empty = false
  end

end
