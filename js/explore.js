// Create a function that will take a string as an argument
// Declare a variable and equal it to the string
// Create a loop that iterates through the string
// Store the reversed string in a new variable

function reverse(str) {
	var reversedstring = " ";
	for (var i = str.length-1; i >= 0; i--) {
		reversedstring += str[i];
	}
	return reversedstring
} 
// Use the function to print the string to console
console.log(reverse("Hello"));
// Create a variable that holds the reverse function with the string
var check = reverse("Calvin");
// Create a if/else that checks if if the variable is true
if (1 == 1) {
	console.log(check);		
}
else {
	console.log("Error");
}