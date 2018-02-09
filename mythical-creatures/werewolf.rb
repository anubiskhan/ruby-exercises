class Werewolf
  attr_reader :name, :location
  def initialize(name, location = 'earth')
    @name = name
    @location = location
    @human_form = true
    @hungry = false
  end

  def change!
    if @human_form == true
      @human_form = false
    else
      @human_form = true
    end
  end

  def human?
    @human_form
  end

  def wolf?
    true if @human_form != true
  end

  def hungry?
    @hungry
    !@hungry if !@human_form
  end

end
