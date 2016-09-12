class Game
  
  attr_accessor :word
  def initialize
      @players = 2
      @music_level = 11
  end 

  def ready_word(word) 
    @word = word.downcase.strip
  end
  
end


# DRIVER CODE 

# Creating a new game instance
puts "Welcome to the Guess-My-Word game!"
game = Game.new

# User creates a word for guessing 
puts "What word would you like the Game Player to guess? To make the game interesting, pick a word that does not repeat letters!"
word = gets.chomp
game.ready_word(word)

secret_word_arr = word.split("")

# Ensure the user's word doesn't repeat letters
if secret_word_arr.uniq.length != secret_word_arr.length
  puts "Remember - pick a word that does not repeat letters! Try again:"
  word = gets.chomp.downcase.strip 
  secret_word_arr = word.split("")
end

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













