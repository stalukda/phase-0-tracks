var colors = ["blue", "red", "purple", "orange"]
var horseNames = ["Ed", "Ted", "Ned", "Fred"]

colors.push("magenta")
horseNames.push("Abed")

var thing = function() {
	var object = {};
	var colors = ["blue", "red", "purple", "orange"];
	var horseNames = ["Ed", "Ted", "Ned", "Fred"];
	for (var i = 0; i < horseNames.length; i++) {
		object[horseNames[i]] = colors[i];
	}
	return object
}

console.log(thing())

function Car(name, color, horsepower) {
	this.name = name;
	this.color = color;
	this.horsepower = horsepower;
	this.revEngine = function() { console.log("Vroom!"); };
}

var nissan = new Car("Nissan", "gold", 250);
console.log(nissan);
console.log("The car makes the noise:");
nissan.revEngine();

var toyota = new Car("Toyota", "grey", 100);
console.log(toyota);
console.log("The car makes the noise:");
toyota.revEngine();