class Game

  # Need to create some logic for the outcome conditions of RPS
  # All logic to stay in this class, none in the controller
  # Possible Outcomes of the Game (using URL syntax for later reference)
  #     if                 then
  # /rock/scissors      | rock win
  # /rock/paper         | paper win
  # /rock/rock          | draw
  # /scissors/paper     | scissors win
  # /scissors/rock      | rock win
  # /scissors/scissors  | draw
  # /paper/rock         | paper win
  # /paper/scissors     | scissors win
  # /paper/paper        | draw

  def self.play(player1, player2)
      case
      when player1 == "rock" && player2 == "scissors"
        return "Rock wins!"
      when player1 == "rock" && player2 == "paper"
        return "Paper wins!"
      when player1 == "rock" && player2 == "rock"
        return "Draw!"
      when player1 == "scissors" && player2 == "paper"
        return "Scissors wins!"
      when player1 == "scissors" && player2 == "rock"
        return "Rock wins!"
      when player1 == "scissors" && player2 == "scissors"
        return "Draw!"
      when player1 == "paper" && player2 == "rock"
        return "Paper wins!"
      when player1 == "paper" && player2 == "scissors"
        return "Scissors wins!"
      when player1 == "paper" && player2 == "paper"
        return "Draw!"
      end
  end

end
