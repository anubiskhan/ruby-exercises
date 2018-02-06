class Centaur
  attr_reader :name, :breed, :cranky_counter
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky_counter = 0
    @standing = true
    @laying = false
  end

  def shoot
    @cranky_counter += 1
    if cranky? == false && @standing == true
      'Twang!!!'
    else
      'NO!'
    end
  end

  def run
    @cranky_counter += 1
    if cranky? == false && @standing == true
      'Clop clop clop clop!!!'
    else
      'NO!'
    end
  end

  def cranky?
    if @cranky_counter < 3
      false
    else
      true
    end
  end

  def standing?
    @standing
  end

  def laying?
    @laying
  end

  def sleep
    if standing? == true
      'NO!'
    else
     @cranky_counter = 0
    end
  end

  def lay_down
    if @standing == true
      @standing = false
      @laying = true
    end
  end

  def stand_up
    if @laying == true
      @laying = false
      @standing = true
    end
  end
end
