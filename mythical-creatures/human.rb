require 'pry'

class Human
  attr_reader :name, :encounter_counter
  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @knocked_out = false
  end

  def encounter
    @encounter_counter += 1
  end

  def notices_ogre?
    true if (@encounter_counter % 3).zero?
  end

  def knocked_out?
    @knocked_out
  end

  def got_hit
    @knocked_out = true
  end

  def accepts_apology
    @knocked_out = false
  end
end
