class Dragon
  attr_reader :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @full_counter = 0
  end

  def hungry?
    if @full_counter < 3
      @hungry
    else
      @hungry = false
    end
  end

  def eat
    @full_counter += 1
  end

end
