class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def playing
   if @player1 == "rock" and @player2 == "paper"
    return "paper wins"
   elsif @player1 == "rock" and @player2 == "scissors"
    return "rock wins"
   elsif @player1 =="paper" and @player2 == "scissors"
    return "scissors wins"
   else
   return "didn't get it"
   end          
  end
end  