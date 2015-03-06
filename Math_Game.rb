@player_1_lives = 3
@player_2_lives = 3
@player_1_score = 0
@player_2_score = 0

def player1_question_generator
  num1 = rand(20)
  num2 = rand(20)
  puts "Player 1, what is #{num1} + #{num2}?"
  answer = gets.chomp.to_i
  if answer == num1 + num2
    puts "Awesome! You're a math wiz! +1 for you!"
    @player_1_score = @player_1_score + 1
    puts "Your score is #{@player_1_score}"
    player2_question_generator
  else
    puts "Wow, you suck."
    @player_1_lives = @player_1_lives - 1
    puts "You have #{@player_1_lives} left."
    player2_question_generator
  end
end

def player2_question_generator
  num1 = rand(20)
  num2 = rand(20)
  puts "Player 2, what is #{num1} + #{num2}?"
  answer = gets.chomp.to_i
  if answer == num1 + num2
    puts "Awesome! You're a math wiz! +1 for you!"
    @player_2_score = @player_2_score + 1
    puts "Your score is #{@player_2_score}"
    player1_question_generator
  else
    puts "Wow, you suck."
    @player_2_lives = @player_2_lives - 1
    puts "You have #{@player_2_lives} left."
    player1_question_generator
  end

def stats_check
  if (@player_1_lives || @player_2_lives) == 0
    if @player_1_lives == 0
      puts "Player 1 lost all lives! Player 2 wins!"
    elsif @player_2_lives == 0
      puts "Player 2 lost all lives! Player 1 wins!"
    elsif @player_1_score == 20
      puts "Player 1 wins #{player_1_score} to #{player_2_score}!"
    elsif @player_2_score == 20
      puts "Player 1 wins #{player_1_score} to #{player_2_score}!"     
    else
      next
    end
  end
end
        







