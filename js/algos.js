// define an array as a variable.
// define an empty array for the length or the strings in the first array
// run a loop to add the string lengths to the second array
// find the index of the highest value in the string length array.
// return the string at the same index in the original array.

var array = ["long phrase","longest phrase","longer phrase"];
var str_length_array = []


for (var i = 0; i < array.length; i++) {
	
	str_length_array.push(array[i].length);
}

console.log(array);
console.log(str_length_array);