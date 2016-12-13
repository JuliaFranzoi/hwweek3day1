require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
    @game = Game.new( "paper", "scissors")
  end  
  
  # def test_case1
  #   assert_equal("rock wins", @game.playing())
  # end  
  
  # def test_case2
  #   assert_equal("paper wins", @game.playing())
  # end

  def test_case3
    assert_equal("scissors wins", @game.playing())
  end

end  

