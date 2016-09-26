# def do_it
# 	puts "You can do it!"
# 	yield("Sumaiya", "Alex")
# end

# do_it { |name1, name2| puts "Do what? #{name1} marry #{name2}" }

# treats = ["sushi", "pizza", "burgers"]

# treats.each do |food|
# 	puts food
# end

# p treats.each 

# treats.map! do |food|
# 	puts food + ", love it!"
# end

# famous_sites = {
# 	Cambodia: "Angor Wat",
# 	Paris: "Eiffel Tower", 
# 	SF: "Golden Gate Bridge"
# }

# p famous_sites.each

# famous_sites.each do |city, site|
# 	puts "#{site}, #{city}"
# end

# items = [1,2,3]
# p items.delete_if {|item| item < 2 }   

arr_items = [1,2,3]
hash_items = {
	one: 1,
	two: 2,
	three: 3
}

#A method that iterates through the items, deleting any that meet a certain condition

# p arr_items.delete_if {|item| item < 2 }  
# p hash_items.delete_if {|word, digit| digit > 2 } 

#A method that filters a data structure for only items that do satisfy a certain condition 
# p arr_items.keep_if {|item| item < 2 }  
# p hash_items.keep_if {|word, digit| digit < 2 }  

#A different method that filters a data structure for only items satisfying a certain condition
# p arr_items.select { |item| item > 2 } 
# p hash_items.select { |word, digit| digit > 2 } 

#A method that will remove items 
#from a data structure until the condition in the block evaluates to false, then stops
#arr.drop_while {|x| x > 2}