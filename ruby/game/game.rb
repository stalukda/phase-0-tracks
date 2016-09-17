
#My own refactored code (updated 9/17/16). Old code submitted for hw below. 
#1 - Create an array(#1) for Player 1's secret word 
#2 = Set the # of turns based on the secret word
#3 - Create an array(#2) of dashes for display purposes
#4 - Create an array(#3) to store guessed letters 
#5 - Player 2 guesses the letters
#6 - Print the final outcome 

class Game
  
  attr_accessor :word, :secret_word_arr, :used_letters_arr, :turns

  def initialize
#1 - Create an array(#1) for Player 1's secret word 
      @secret_word_arr = []
#4 - Create an array(#3) to store guessed letters 
      @used_letters_arr = []
    end 

  def secret_word(word) 
      @word = word.downcase.strip
      @secret_word_arr = @word.split("")
      abort("Remember - pick a word that does not repeat letters! GAME OVER!") unless @secret_word_arr.uniq.length == @secret_word_arr.length
      @secret_word_arr
    end

#2 = Set the # of turns based on the secret word
    def num_turns(arr)
      @turns = arr.length
      @turns 
    end 

end 
#_______________________________________________________
# DRIVER CODE - whatever requires User Input goes into Driver!! 

puts "Welcome to the Guess-My-Word game!"
game = Game.new

puts "Player 1: What word should Player 2 guess? To make the game interesting, pick a word that does not repeat letters!"
word = gets.chomp
game_arr = game.secret_word(word)
game_turns = game.num_turns(game_arr)
#3 - Create an array(#2) of dashes for display purposes
guessed_portion = Array.new(game_turns, "-")

puts "Hello Player 2! Guess a #{game_turns}-letter long word with #{game_turns} guesses!"

#5 - Player 2 guesses the letters
game_turns.times do 
    puts "What letter would you like to guess?"
    letter = gets.chomp.downcase

    if game.used_letters_arr.include?(letter)
      puts "You already used that letter. Pick another one"
      letter = gets.chomp.downcase
    elsif !game.secret_word_arr.include?(letter)
      puts "Whoops wrong letter! Here is the word so far: #{guessed_portion}"
    elsif game.secret_word_arr.include?(letter)
      puts "You are on the right track! Here is the word so far: "
      guessed_word_index = game.secret_word_arr.index(letter)
      p guessed_portion.fill(letter, guessed_word_index, 1)
    end
    game.used_letters_arr << letter 
end 

#6 - Print the final outcome 
if guessed_portion == game.secret_word_arr
  puts "You did it! Great job!"
else 
  puts "Your turns are up! The word was ** #{word.upcase} **! Better luck next time brosef."
end 

=begin OLD CODE, submitted for h/w 
class Game
  
  attr_accessor :word
  def initialize(word)
      @word = word
      @secret_word_arr = word.split("")
      @players = 2
      @music_level = 11
  end 

  def ready_word(word) 
    @word = word.downcase.strip
  end
   
   

  def no_repeat(word)
    if @secret_word_arr.uniq.length != @secret_word_arr.length
      puts "Remember - pick a word that does not repeat letters! Try again:"
      word = gets.chomp.downcase.strip 
      @secret_word_arr = word.split("")
    end
  end
end


# DRIVER CODE 

# Creating a new game instance
puts "Welcome to the Guess-My-Word game!"
# game = Game.new

# User creates a word for guessing 
puts "What word would you like the Game Player to guess? To make the game interesting, pick a word that does not repeat letters!"
word = gets.chomp
game = Game.new(word)
game.ready_word(word)

secret_word_arr = word.split("")
word = game.no_repeat(word)
# # Ensure the user's word doesn't repeat letters
# if secret_word_arr.uniq.length != secret_word_arr.length
#   puts "Remember - pick a word that does not repeat letters! Try again:"
#   word = gets.chomp.downcase.strip 
#   secret_word_arr = word.split("")
# end

#setting number of turns 
turns = secret_word_arr.length

#creating a second array to be used to show the correctly guessed words 
guessed_portion = Array.new(turns, "-")

# Game-player's turn to play
puts "Hello Game Player! You are guessing a word that is #{turns}-letters long & you have a total of #{turns} turns"
used_letters = []

# Sets the # of turns equal to the number of letters in the word. 
turns.times do
    
    puts "What letter would you like to guess?"
    letter = gets.chomp.downcase

#make this a method!!!!!!
    if used_letters.include?(letter)
      puts "You already used that letter. Pick another one"
      letter = gets.chomp.downcase
    elsif !secret_word_arr.include?(letter)
      puts "Whoops wrong letter! Here is the word so far: #{guessed_portion}"
    elsif secret_word_arr.include?(letter)
      puts "You are on the right track! Here is the word so far: "

# if the letter matches a letter in the secret_word, replace the dash in the guessed_portion array with the letter from the secret_word array
      word_index = secret_word_arr.index(letter)
      p guessed_portion.fill(letter, word_index, 1)
    end
    used_letters << letter 
end 

#providing player feedback at the end of the game 
if guessed_portion == secret_word_arr
  puts "You did it! Great job!"
else 
  puts "Your turns are up! Better luck next time brosef!"
end 

=end 












