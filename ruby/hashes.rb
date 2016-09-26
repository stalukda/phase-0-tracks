# Ask for the client's details using a question
# Store their responses as values (in key:value pair format)

array_pract = []
array_pract << "Hi!"
array_pract << "Hello"
p array_pract
p array_pract[0]

puts "Please enter the following info!"

puts "Your name?"
client_name = gets.chomp

puts "Your age?"
client_age = gets.to_i

puts "How many children?"
client_children = gets.to_i

puts "Nautical or floral theme?"
client_theme = gets.chomp 

puts "Now the important question. Do you like cats?"
client_cats = gets.chomp 

client_details = {
	name: client_name,
	age: client_age, 
	children: client_children, 
	theme: client_theme,
	cats: client_cats
	} 

p "Here are the details you entered: "
p client_details

# Ask the client if they would like to update a key
# If they answer "none", 
	#print and then exit program 
# If they respond with a specific key 
	#collect the new value associated with the key 
	#convert that key to a symbol
	#print and then exit program 

puts "Would you like to update any of these entries? Enter: name, age, children, theme, cats OR 'none' if no updates."
response = gets.chomp 

if response == "none" 
	p client_details
elsif response == "name" || response == "age" || response == "children" || response == "theme" || response == "cats"
	puts "What would you like to change #{response} to?"
	new_value = gets.chomp 
	p new_value
	client_details[response.to_sym] = new_value
	p "Here are the updated details: "
	p client_details
end



