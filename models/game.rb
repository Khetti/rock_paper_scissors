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
          return "Scissors are useful for cutting lots
          of things, but not rocks. Player 1 wins!"
        when player1 == "rock" && player2 == "paper"
          return "Good old rock, nothing beats that!
          Except paper of course. Player 2 wins!"
        when player1 == "rock" && player2 == "rock"
          return "The scientific study of rocks is actually
          a subset of geology called petrology. Oh, and this
          game is a draw."
        when player1 == "scissors" && player2 == "paper"
          return "Like a hot knife through butter. Or
          room temperature scissors through paper.
          Player 1 wins!"
        when player1 == "scissors" && player2 == "rock"
          return "Scissors are useful for cutting lots
          of things, but not rocks. Player 2 wins!"
        when player1 == "scissors" && player2 == "scissors"
          return "Be careful with those scissors or you
          might... draw blood. It's a draw. The game is a
          draw."
        when player1 == "paper" && player2 == "rock"
          return "Good old rock, nothing beats that!
          Except paper of course. Player 1 wins!"
        when player1 == "paper" && player2 == "scissors"
          return "Like a hot knife through butter. Or
          room temperature scissors through paper.
          Player 1 wins!"
        when player1 == "paper" && player2 == "paper"
          return "You know what you can do on paper? Draw."
      end
  end

end
