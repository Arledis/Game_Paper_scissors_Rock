require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test
  def setup
    @game = Game.new('paper', 'scissors', 'rock')
  end

  def test_rock_scissors
    result = @game.rock_scissors(rock, scissors)
    assert_equal("Rock wins", result )
  end

  def test_scissors_paper
    assert_equal("Scissors wins", @game.scissors_paper() )
  end

  def test_paper_rock
    assert_equal("Paper wins", @game.paper_rock() )
  end

  def test_rock_rock
    assert_equal("Try again", @game.rock_rock() )
  end

  def test_scissors_scissors
    assert_equal("Try again", @game.scissors_scissors() )
  end

  def test_paper_paper
    assert_equal("Try again", @game.paper_paper() )
  end

end
