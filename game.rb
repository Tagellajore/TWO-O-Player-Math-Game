class Game
  attr_accessor :turn, :player1, :player2

def initialize
 @turn = 1
 @player1 = 3
 @player2 = 3
end

def game_over(player, life)
  puts "#{player} wins with a score of #{life}/3"
  puts "_____Game Over____"
  puts "Goodbye"
  exit(0)
end

def amend_lives (turn)
  if turn == 1
    @player1 -= 1
  else 
    @player2 -= 1
  end
  if @player2 == 0
    game_over("Player 1" , @player1)
  elsif @player1 == 0
    game_over("Player 2" , @player2)
  end
end

def amend_turn(turn)
  @turn = (turn == 1 ? 2 : 1)
end

def start 
  loop do
  puts "P!: #{@player1}/3 vs P2: #{@player2}/3"
  question = Question.new(turn)
  if !question.start
    break if amend_lives(turn)
  end
   amend_turn(turn)
end

end
end