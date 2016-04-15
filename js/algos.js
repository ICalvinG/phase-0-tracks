// Create a few arrays and assign them to variables
// Define a function that will take the array as an argument
// Create a variable to take the longest string
// Create a loop that will iterate through the array
// The iteration will be for the .length of the array
// Iterate through the array to find the longest string
// Assign the longest string to the variable
// Return the variable to the console

var songs = ["Flight of the Navigator", "American Wedding", "No Make-Up (Her Vice)", "A Tale of 2 Citiez"]
var movies = ["Batman vs. Superman", "The Revenant", "Zootopia", "The Hateful Eight"]
var games = ["Metal Gear Solid V: The Phantom Pain", "Grand Theft Auto V", "Dynasty Warriors", "Pokemon X/Y"]


function length(songs) {
	var longest = "";
	for (var i = 0; i < songs.length; i++) {
		if (songs[i].length > longest.length) {
			longest = songs[i];
		}
	}
	return longest;
}

console.log(length(songs))
console.log(length(movies))
console.log(length(games))

// Create a function that takes two objects and checks if they share a key-value pair
// If the key-value pair match have the console return true
// If they key-value pair do not match then it will return false

function share(object1, object2) {
	for (var value in object1) {
		if (object1[value] == object2[value]) {
			return true;
			}
		}
		return false;
}

console.log(share({book: "Harry Potter", genre: "Fiction"}, {name: "Artemis Fowl", genre: "Fiction"}));
console.log(share({book: "The Diary of Anne Frank", genre: "Auto-Biography"}, {book: "Hunger Games", genre: "Dystopian"}));
console.log(share({book: "1984", genre: "Dystopian"}, {book: "The Giver", genre: "Dystopian"}));
console.log(share({book: "Animorphs", genre: "Science Fiction"}, {book: "The Da Vinci Code", genre: "Fiction"}));

// Create a function that takes an integer for an argument
// Have the function return an array with the same number of strings as the argument
// Create an empty array to store the random words
// Have the function generate random words with varying lengths (1 - 10)
// Return the array


function createArray(int) {
	var array = [];
	var jumble = "adjflaolzlwoel;knf;dakjksdnfd";
	var random = "";
	for (var x = 0; x < int; x++) {
		var long = Math.floor((Math.random() * 10) + 1);
		random = "";
		for (var y = 0; y <long; y++) {
     		var index = Math.floor(Math.random() * (jumble.length-1));
    		random = jumble[index] + random;
    	}
    array[x] = random
	}
	return array
}

// Create driver code that executes function 10 times
// Print the results

for (var y = 0; y < 10; y++) {
	var test = createArray(7);
	console.log(test);
	console.log(length(test));
}