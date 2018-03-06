require_relative 'human'

class Ogre
  attr_reader :name, :home, :swings, :encounter_counter
  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(person)
    @encounter_counter += 1
    person.encounter
    swing_at(person) if person.notices_ogre?
  end

  def swing_at(person)
    @swings += 1
    person.got_hit if @swings.even?
  end

  def apologize(person)
    person.accepts_apology
  end
end
