require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game')


class TestGame < MiniTest::Test

  def test_both_same_inputs()
    game1 = Game.new("scissors", "scissors")
    result = game1.outcome()
    assert_equal("draw", result)
  end

  def test_scissors_first_paper_second()
    game2 = Game.new("scissors", "paper")
    result = game2.outcome()
    assert_equal("scissors wins", result)
  end

  def test_paper_first_scissors_second()
    game2 = Game.new("paper", "scissors")
    result = game2.outcome()
    assert_equal("scissors wins", result)
  end

  def test_rock_first_scissors_second()
    game2 = Game.new("rock", "scissors")
    result = game2.outcome()
    assert_equal("rock wins", result)
  end

  def test_scissors_first_rock_second()
    game2 = Game.new("scissors", "rock")
    result = game2.outcome()
    assert_equal("rock wins", result)
  end

  def test_paper_first_rock_second()
    game2 = Game.new("paper", "rock")
    result = game2.outcome()
    assert_equal("paper wins", result)
  end
  
  def test_rock_first_paper_second()
    game2 = Game.new("rock", "paper")
    result = game2.outcome()
    assert_equal("paper wins", result)
  end
end
