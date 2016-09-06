arr = [42, 89, 23, 1]

# # take an array and the integer to search for

def search_array (array, int)
	index = 0 
# loop through the array looking for the integer
	until index == array.length	
# if you find the integer, return its index
		if array[index] == int
			puts "You matched your input of #{int} at index number: #{index}!"
# if you don't find the integer, return nil 
		else
			puts "doesn't work!"	
		end 
		index += 1
	end
end

# p search_array(arr, 1)
# # => 3
# p search_array(arr, 24)
# => nil


# #Release 1: Calculate Fibonacci Numbers

# create a fib method that takes the length of the array as a parameter
def fibonacci(x)

#create a pre-filled array for 0 & 1 
    array = [0,1]
    if x == 0 || x == 1
    	return array[x] = x
    end  

#implement the fib sequence - looping through the array, 
#add the last two numbers to each other so that the array gets populated 
  	while array.length < x
    	array[array.length] = array[-1] + array[-2]
  	end
#show the sum of the array 
  	sum = 0
	array.each { |z| sum+=z }
	p "Here is the array all added up: #{sum}"
  	return array
end

# p fibonacci(10)
# p fibonacci(100)

# Release 2: Sorting 
# Pseudocode a sorting method that takes an array of integers and uses a sorting algorithm. The method should return a sorted version of the array. Your pseudocode should not be Ruby-specific.

#Bubble sort 
# According to Sitepoint.com & Stackoverflow, to bubble sort, 
# you compare the value of the first element to the next, swapping accordingly to put it in order. 
# Although intuitive, it is a slow way to sort bc you have to repeatedly go through the list until 
# the last sort is made bc there are no longer any swaps to make. 

# Pseudocode: 
# - create a method that takes an array as an argument 
# - set a swapping variable to false
# - for the number of elements in the array, swap if a number is higher than the other. 
# - keep looping until you have compared all of the numbers 
# - end 

# The bubble sort, copied from Sitepoint.com: 

arr = [1,3,5,2]

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

# p bubble_sort(arr)
