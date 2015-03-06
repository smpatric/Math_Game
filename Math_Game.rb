
class Player
  attr_accessor(:name, :score, :lives)
  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def add_points
    @score += 1
  end

  def lose_life
    @lives -= 1
  end
end

def questions(player)
  num1 = rand(20)
  num2 = rand(20)
  puts "#{player.name} what is #{num1} + #{num2}?"
  answer = gets.chomp
  if answer.to_i == num1 + num2
    player.add_points
    puts "Correct! Your score is #{player.score}"
  else
    player.lose_life
    puts "Nope! You Suck! You have #{player.lives} lives left!"
  end
end

def game
  puts "Player 1, what's your name?: "
  player_1_name = gets.chomp
  player_1 = Player.new(player_1_name)
  puts "Player 2, what's your name?: "
  player_2_name = gets.chomp
  player_2 = Player.new(player_2_name) 
  who_is_playing = 0 
  while (player_1.lives > 0  && player_2.lives > 0 )
    if who_is_playing == 0
      questions(player_1)
      who_is_playing = 1
    else
      questions(player_2)
      who_is_playing = 0
    end
  end
  puts "Game Over!"
  if player_2.lives.to_i == 0
    puts "#{player_1.name} wins! Your score was #{player_1.score}!"
  else
    puts "#{player_2.name} wins! Your score was #{player_2.score}!"
  end
end

game





        







