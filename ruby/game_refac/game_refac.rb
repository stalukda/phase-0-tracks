class Game

	attr_accessor :guesses_made, :secret_word, :guesses_allowed

	def initialize(str)

		# Create an array(#1) for Player 1's secret word 
		@secret_word = str.split("")
		@guesses_allowed = @secret_word.length
		@guesses_made = 0 
		# Create an array(#2) of dashes for display purposes
		@word = Array.new(@secret_word.length, "-")
		# Create an array(#3) to store guessed letters 
		@used_letters = []
	end   

	def check_word
		 abort("Remember - pick a word that does not repeat letters! GAME OVER!") unless @secret_word.uniq.length == @secret_word.length
	end 

# Method 1: Create an array to keep used letters. Check if the letter is being repeated 
	def game_logic(letter) 
		if @used_letters.include?(letter) 
			puts "Pick another letter"
		elsif !secret_word.include?(letter)
      		puts "Whoops wrong letter! Here is the word so far: #{@word}"
      		@guesses_made += 1 
		else 
			puts "You are on the right track! Here is the word so far: "
			# #fill in that letter in the word 
      		p @word.fill(letter, @secret_word.index(letter), 1)
      		@used_letters << letter
			@guesses_made += 1 
		end 
		# p "Here are used letters: #{@used_letters}"
		# p "Number of guesses: #{@guesses}"
	end 

# Method 3: Once all guesses are up, print message for winning or losing
	def game_over 
		if @secret_word == @word 
  		puts "You did it! Great job!"
		else 
  		puts "Your luck is up! The word was **#{@secret_word.join("").upcase}**! Better luck next time brosef."
	end
end 

#Driver code__________________________

# User#1, enter word
# puts "Hello Player 1! Word to guess?"
puts "Player 1: What word should Player 2 guess? To make the game interesting, pick a word that does not repeat letters!"
input = gets.chomp
game = Game.new(input) 
game.check_word

puts "Hello Player 2! Guess a #{game.guesses_allowed}-letter long word with #{game.guesses_allowed} guesses!"

until game.guesses_made == game.guesses_allowed
    puts "What letter would you like to guess?"
    letter = gets.chomp.downcase
    game.game_logic(letter)
end 
# game_letters = ['w', 'o', 'o', 'r', 'd', 's']
# game_letters.each do |letter|
# 	game.game_logic(letter)
# end  

game.game_over
end 
# User#2, guess letters

# until game.guesses == THINK 
# 	puts "What letter would you like to guess?" 
# 	letter = gets.chomp 
# 	game.guessed_letter(letter)
# end 
