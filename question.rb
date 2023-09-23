class Question
  attr_accessor :turn

  def initialize(turn)
    @turn = turn
  end

  def start 
    num1 = rand(1..20)
    num2 = rand(1..20)

    puts "--- NEW TURN ---"
    puts "Player #{turn}: What does #{num1} + #{num2} equal to ?"
    print "> "


    answer = gets.chomp.to_i

    if answer == num1 + num2 
      puts "YES! you are correct"
      return true
    else 
      puts "Seriously? No!"
      return false
    end
  end

end