require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/game.rb'

class TestGame < Minitest::Test

  def test_rock_beats_scissors()
    assert_equal("Rock wins!", Game.play("rock", "scissors"))
  end

  def test_scissors_beats_paper()
    assert_equal("Scissors wins!", Game.play("scissors", "paper"))
  end

  # Good old rock, nothing beats that!
  def test_poor_predictable_bart()
    assert_equal("Paper wins!", Game.play("paper", "rock"))
  end

  # The classic RPS opening, scissors v scissors.
  def test_draw()
    assert_equal("Draw!", Game.play("scissors", "scissors"))
  end

end
