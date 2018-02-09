class Vampire
  attr_reader :name, :pet
  def initialize(name, pet = 'bat', thirsty = true)
    @name = name
    @pet = pet
    @thirsty = thirsty
  end

  def thirsty?
    @thirsty == true
  end

  def drink
    @thirsty = false
  end
end
