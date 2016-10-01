class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	num.times {puts "Woof"}
  end

  def roll_over
  	puts "*rolls over*"
  end
  
  def dog_years(int)
  	return int *7 
  end

  def wag_tail(num)
  	num.times {puts "*wag tail*"}  	
  end

  def initialize 
  	puts "initializing new puppy instance"
  end
end

# rover = Puppy.new
# rover.fetch("Ball")
# rover.speak(3)
# rover.roll_over
# p rover.dog_years(5)
# rover.wag_tail(4)

# In puppy_methods.rb, design and implement your own class below the Puppy class 
# -- anything you'd like, but it should have an initialize method and at least two other instance methods.

class Fruit
	def crunch(int)
		int.times {puts "*You bit me! Crunch*"}
	end

	def peel(int)
		int.times {puts "*Peeling*"}
	end

	def initialize 
		puts "I'm a fruit!"
	end 
end 

arr = []
50.times {arr << Fruit.new}

arr.each do |fruit|
  fruit.peel(2)
end 

# apple = Fruit.new

# Use a loop to make 50 instances of your class. 
#Ruby blocks are between do/end or {}

# all_fruits = []

# 50.times do 
# 	all_fruits << Fruit.new 
# end

# # Iterate over that data structure using .each and call the instance methods you wrote on each instance. 

# all_fruits.each {|fruit| fruit.crunch(10)}
# all_fruits.each {|fruit| fruit.peel(3)}
# So if you wrote a Gymnast class, this is where you'd call .flip and .jump on each of your instances of Gymnast.
