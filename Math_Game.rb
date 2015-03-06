require 'colorize'

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
  operators = [:+, :-, :*]
  get_operator = operators.sample
  puts "#{player.name} what is #{num1} #{get_operator} #{num2}?"
  answer = gets.chomp
  if answer.to_i == num1.send(get_operator, num2)
    player.add_points
    puts "Correct! Your score is #{player.score}".colorize(:green)
  else
    player.lose_life
    puts "Nope! You Suck! You have #{player.lives} lives left!".colorize(:red)
  end
end

def game_logic
  who_is_playing = 0 
  while (@player_1.lives > 0  && @player_2.lives > 0 )
    if who_is_playing == 0
      questions(@player_1)
      who_is_playing = 1
    else
      questions(@player_2)
      who_is_playing = 0
    end
  end
  puts "Game Over!"
  if @player_2.lives.to_i == 0
    puts "#{@player_1.name} wins! The score is #{@player_1.name}: #{@player_1.score} to #{@player_2.name}: #{@player_2.score}!"
  else
    puts "#{@player_2.name} wins! The score is #{@player_2.name}: #{@player_2.score} to #{@player_1.name}: #{@player_1.score}!"
  end
  puts "Would you like to play again? Yes/No".colorize(:yellow)
  again = gets.chomp.downcase
  if again == "yes"
    @player_1.lives && @player_2.lives = 3
    who_is_playing = 0
    game_logic
  else
    puts "Thanks for playing!".colorize(:light_green)
  end
end


def game
  puts "Player 1, what's your name?: "
  player_1_name = gets.chomp
  @player_1 = Player.new(player_1_name)
  puts "Player 2, what's your name?: "
  player_2_name = gets.chomp
  @player_2 = Player.new(player_2_name) 
  game_logic
end

game





        







