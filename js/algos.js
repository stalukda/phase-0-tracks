//declare empty letter string
//replace with the longest word 

var longestString = function(arr) {
	var longest = "";
		for (var i = 0; i < words.length; i++) {
			if (longest < words[i]) {
				longest = words[i]
			}
		} return longest
}

//Driver code 
var words = ["long phrase","longest phrase","longer phrase"]
console.log(longestString(words))

var fruits = ["apples","oranges","pears"]
console.log(longestString(fruits))