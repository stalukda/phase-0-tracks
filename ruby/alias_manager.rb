# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. 
# So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

# puts "What is your first name?"
# first_name = gets.chomp 

# puts "What is your last name?"
# last_name = gets.chomp 


def alias_builder(first_name, last_name)
	puts "Hello #{first_name} #{last_name}"
	newname1 = first_name.sub(first_name, last_name)
	newname2= last_name.sub(last_name, first_name)
	# puts "Hello #{newname1} #{newname2}"
	swapped_name = newname1 + newname2
	# puts "Hello #{swapped_name}"

# split the letters so we have an array
	p name_arr = swapped_name.split("")
# change the vowels to the next vowel
	p name_arr.map!{ |letters| letters.next }
# change the consonants to the next consonant 
	
end 

alias_builder("Felicia" , "Torres")

