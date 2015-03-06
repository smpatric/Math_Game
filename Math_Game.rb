@player_1_lives = 3
@player_2_lives = 3
@player_1_score = 0
@player_2_score = 0
@playing = true

def player1_question_generator
  num1 = rand(20)
  num2 = rand(20)
  puts "Player 1, what is #{num1} + #{num2}?"
  answer = gets.chomp.to_i
  if answer == num1 + num2
    puts "Awesome! You're a math wiz! +1 for you!"
    @player_1_score = @player_1_score + 1
    puts "Player 1 score is: #{@player_1_score}"
  else
    puts "Wow, you suck."
    @player_1_lives = @player_1_lives - 1
    puts "You have #{@player_1_lives} lives left."
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
    puts "Player 2 score is: #{@player_2_score}"
  else
    puts "Wow, you suck."
    @player_2_lives = @player_2_lives - 1
    puts "You have #{@player_2_lives} lives left."
  end
end

def stats_check
    if @player_1_lives == 0
      @playing = false
      puts "Player 1 lost all lives! Player 2 wins!"
    elsif @player_2_lives == 0
      @playing = false
      puts "Player 2 lost all lives! Player 1 wins!"
    # elsif @player_1_score == 20
    #   @playing = false
    #   puts "Player 1 wins #{player_1_score} to #{player_2_score}!"
    # elsif @player_2_score == 20
    #   @playing = false
    #   puts "Player 1 wins #{player_1_score} to #{player_2_score}!"     
    end
end

def game
  while @playing == true do
    player1_question_generator
    stats_check
    if @playing != true
      puts "early break!"
      break
    end

    player2_question_generator
    stats_check
    
  end
end

game



        







