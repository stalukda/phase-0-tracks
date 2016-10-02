class Santa

	attr_accessor :gender, :age, :ethnicity

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@raindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0..140)
		puts "I am a #{gender} #{ethnicity} #{age}-old santa!"
	end 

	def speak 
		p "Ho, ho"
	end  

	def eat_milk_and_cookies(str)
		"That was a good #{str}"
	end 

	def celebrate_birthday
		@age += 1
	end 

	def get_made_at(name)
		@raindeer_ranking.delete(name)
		@raindeer_ranking.push(name)
	end 

		# #find the index of #name
		# rank = @reindeer_ranking.index(name)
		# @reindeer_ranking[rank], @reindeer_ranking[8] = @reindeer_ranking[8], @reindeer_ranking[rank]
		# #switch with whatever is at index 8

end 

#___________Driver

nick = Santa.new("female", "Bengali") 
p nick.get_made_at("Vixen")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

100.times do
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end
