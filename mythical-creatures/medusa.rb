class Medusa
  attr_reader :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(target)
    @statues.push(target)
    target.stone = true
    if @statues.count >= 4
      @statues.shift.freed
    end
  end
end

class Person
  attr_reader :name
  attr_accessor :stone
  def initialize(name)
    @name = name
    @stone = false
  end

  def stoned?
    @stone
  end

  def freed
    @stone = false
  end
end
