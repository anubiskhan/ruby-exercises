class Wizard
  attr_reader :name, :bearded
  def initialize(name, bearded = {bearded: true})
    @name = name
    @bearded = bearded
    @spells_cast = 0
  end

  def bearded?
    @bearded[:bearded]
  end

  def incantation(spoken)
    "sudo #{spoken}"
  end

  def rested?
    3 > @spells_cast
  end

  def cast(spell = "sparks")
    @spells_cast += 1
    "#{spell.upcase}!"
  end
end
