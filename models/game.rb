class Game

@game = def self.game(move1, move2)
  if move1 == move2
    return "It's a draw!"
  elsif move1.downcase() == ("scissors" || "paper") && move2.downcase() == ("paper" || "scissors")
    return "Scissors win!"
  elsif move1.downcase() == ("rock" || "scissors") && move2.downcase() == ("scissors" || "rock")
    return "Rock wins!"
  else move1.downcase() == ("paper" || "rock") && move2.downcase() == ("rock" || "paper")
    return "Paper wins!"
  end

end

end
