# CODING/Week_2/phase-0-tracks/ruby 

puts "How many employees will be processed?"
employees = gets.to_i

until employees <= 0
	puts "What is your name?"
		name = gets.chomp

	puts "How old are you?"  
		age = gets.to_i 

	puts "What year were you born?"
		year = gets.to_i 

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
		garlic = gets.chomp 

 	puts "Would you like to enroll in the company’s health insurance?"
 		insurance = gets.chomp 

 	allergies = ""

	while allergies != "DONE"
  		puts "List any allergies that you may have. Type 'DONE' when finished"
  		allergies = gets.chomp 
  		if (allergies == "sunshine") 
  			puts "RESULT: Based on allergy, #{name} is definitely a vampire"
  		end 
	end

	puts case 
	when (name == "Drake Cula") || (name == "Tu Fang")
	 	"RESULT: Definitely a vampire, given name is #{name}"
	when (year != (2016 - age)) && (garlic == "no") && (insurance == "no")
		"RESULT: #{name} is almost certainly a vampire"
	when (year != (2016 - age)) && ((garlic == "no") || (insurance == "no"))
		"RESULT: #{name} is probably a vampire"
	when (year == (2016 - age)) && (garlic == "yes")
		"RESULT: #{name} is probably not a vampire"
	else
		"RESULT: inconclusive"
	end 

	employees -= 1 
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
