class Werewolf
  attr_reader :name, :location
  def initialize(name, location = 'earth')
    @name = name
    @location = location
    @form = :human
    @hungry = false
    @recent_transformation = false
  end

  def change!
    if @form == :human
      @recent_transformation = true
      @form = :wolf
    else
      @form = :human
    end
  end

  def human?
    @form == :human
  end

  def wolf?
    @form == :wolf
  end

  def hungry?
    if @recent_transformation == false
      @hungry
    else
      !@hungry
    end
  end

  def consume(tasty)
    if @form == :wolf
      tasty.status = :dead
      @recent_transformation = false
      'Ate that lil b'
    else
      false
    end
  end

end
