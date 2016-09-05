# Swap the first and last name by subbing them for each other 
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou' by using next 
# and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet by usnig next

def alias_builder(first_name, last_name)
	# Swap the first and last name by subbing them for each other 
	newname1 = first_name.sub(first_name, last_name)
	newname2= last_name.sub(last_name, first_name)
	#declare swapped_name variable to store the swapped name
	swapped_name = newname1 + newname2
	# split the letters in swapped_name so we have an array
	name_arr = swapped_name.split("")
	# change the vowels & consonants to the next in the series 
	p name_arr.map!{ |letters| letters.next }
end 

#Create an until loop to keep asking for names to be coded until the user types 'quit'

first_name = " "
last_name = " "

until first_name == "quit" || last_name == "quit"

	puts "What is your first name? Enter 'quit' to exit"
	first_name = gets.chomp 

	unless first_name == "quit"
		puts "What is your last name?"
		last_name = gets.chomp 
		puts "Hello #{first_name} #{last_name}"
		puts "Here is your alias for #{first_name}  #{last_name}:"
		alias_builder(first_name, last_name)
	end

end 


