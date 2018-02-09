class Pirate
  attr_reader :name, :job, :booty
  def initialize(name = 'Kan N. Fodder', job = 'Scallywag', booty = 0)
    @name = name
    @job = job
    @booty = booty
    @heinous_acts = 0
  end

  def cursed?
    @heinous_acts > 2
  end

  def commit_heinous_act
    @heinous_acts += 1
  end

  def rob_ship
    @booty += 100
  end
end
