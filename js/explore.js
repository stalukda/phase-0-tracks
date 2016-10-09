//start at last letter
//return that letter, join it to the next 

function reverse(str) {
	var word = ""

	for (var i = str.length - 1; i >= 0; i-=1) {
	word += str[i];
	} 
	return word
}

//Driver code 
// console.log(reverse("hello"))

var greeting = reverse("hola")

if (1 == 1)
	console.log(greeting)
