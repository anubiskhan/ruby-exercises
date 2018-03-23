class MadLib
  def initialize
    @noun = 'noun'
    @verb = 'verb'
    @adjective = 'adjective'
    @adverb = 'adverb'
  end

  def noun(string)
    @noun = string
  end

  def verb(string)
    @verb = string
  end

  def adjective(string)
    @adjective = string
  end

  def adverb(string)
    @adverb = string
  end

  def result
    "Do you #{@verb} your #{@adjective} #{@noun} #{@adverb}? That's hilarious!"
  end
end
