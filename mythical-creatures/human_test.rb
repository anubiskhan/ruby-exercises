require 'minitest/autorun'
require 'minitest/pride'
require_relative 'human'

class HumanTest < Minitest::Test
  def setup
    @human = Human.new('Greg')
  end

  def test_it_has_a_name
    assert_equal 'Greg', @human.name
  end

  def test_encounter
    assert_equal 0, @human.encounter_counter

    @human.encounter

    assert_equal 1, @human.encounter_counter
  end

  def test_notices_ogre
    @human.encounter
    @human.encounter

    refute @human.notices_ogre?

    @human.encounter

    assert @human.notices_ogre?
  end

  def test_got_hit
    refute @human.knocked_out?

    @human.got_hit

    assert @human.knocked_out?
  end

  def test_accepts_apology
    @human.got_hit

    @human.accepts_apology

    refute @human.knocked_out?
  end
end
