require 'minitest/autorun'
require_relative('../models/game')

class TestGame < MiniTest::Test

  def test_draw()
    assert_equal("It's a draw!", Game.game("rock", "rock"))
  end

  def test_scissors_win()
    assert_equal("Scissors win!", Game.game("scissors", "paper"))
  end

  def test_rock_wins()
    assert_equal("Rock wins!", Game.game("rock", "scissors"))
  end

  def test_paper_wins()
    assert_equal("Paper wins!", Game.game("paper", "rock"))
  end

end
