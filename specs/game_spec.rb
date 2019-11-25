require 'minitest/autorun'
require_relative '../models/calculator'

class TestGame < Minitest::Test

  def test_rock_beats_scissors()
    assert_equal("Rock wins!", )
  end

end
