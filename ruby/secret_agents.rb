
# method that takes a string as an argument 
# break up each of the strings into letters 
# loop through each letter
# advance each letter 

def encrypt (str)
	index = 0
	while index < str.length
  	p str[index].next
  	index += 1
	end
end 

# p encrypt ("abc")

# method that takes a string as an argument 
# break up each of the strings into letters 
# find the index of each letter
# compare the letter against the indexed alphabet
# use the alphabet to figure out how to decrease by a letter 

def decrypt(str)
	original_index = 0
	reference = "abcdefghijklmnopqrstuvwxyz"
	while original_index < str.length
      new_letter_index = reference.index(str[original_index]) 
      p reference[new_letter_index -=1]  
      original_index += 1
	end
end
# p decrypt ("bcd")
# p decrypt("afe")


# works bc you are basically undoing what you've done (encrypting, then decrypting)
# p decrypt(encrypt("swordfish"))

puts "Would you like to decrypt or encrypt?"
response = gets.chomp 

puts "What is the password?"
password = gets.chomp 

if response == "encrypt"
	p "here is your encrypted password! #{encrypt(password)}"
else
	p "here is your decrypted password! #{decrypt(password)}"
end
