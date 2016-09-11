class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender 

	def speak
		# puts "Ho, ho, ho! Haaapy holidays!"
	end
	
	def eat_milk_and_cookies(cookie_type)
		# puts "That was a good #{cookie_type}"
	end
	
	def initialize(gender, ethnicity, hair_color)
		# puts "initializing Santa instance"
		@gender = gender
		@ethnicity = ethnicity
		@hair_color = hair_color
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "This Santa is a #{gender}, #{hair_color} headed person of #{ethnicity} background"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(name)
		#find the index of #name
		rank = @reindeer_ranking.index(name)
		@reindeer_ranking[rank], @reindeer_ranking[8] = @reindeer_ranking[8], @reindeer_ranking[rank]
		#switch with whatever is at index 8
		p @reindeer_ranking
	end

# Setter Code refactored above 
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end	

# Getter code refactorerd above 
	# def age
	# 	@age
	# end

	# def ethnicity 
	# 	@ethnicity
	# end 

end

# Test calls: 
# nick = Santa.new("male", "white", "white")
# nick.speak
# nick.eat_milk_and_cookies("chocholate chip")
# nick.celebrate_birthday
# nick.get_mad_at("Vixen")
# nick.gender = "female"
# p "age: #{nick.age}"
# p "ethnicity: #{nick.ethnicity}"
# p "gender: #{nick.gender}"

#Code refactorerd below
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_hair_colors = ["red", "blonde", "raven", "bald", "blue", "brunette", "pastel"]

# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i], example_hair_colors[i])
# end

# Create your Santas with a randomly selected gender and a randomly selected ethnicity (+ hair color). 
100.times do
  santas << Santa.new(example_genders.sample, example_ethnicities.sample, example_hair_colors.sample)
end
