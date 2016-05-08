// define an array as a variable.
// define an empty array for the length or the strings in the first array
// run a loop to add the string lengths to the second array
// find the index of the highest value in the string length array.
// return the string at the same index in the original array.

function find_longest(ary) {
var str_length_array = [];
for (var i = 0; i < ary.length; i++) {
	str_length_array.push(ary[i].length);
}
var largest = Math.max.apply(Math, str_length_array);
var largest_index = (str_length_array.indexOf(largest));
console.log(ary[largest_index]);
}

find_longest(["long phrase","longest phrase","longer phrase"]);
find_longest(["brain dead coding","rusty sleeper","bla"]);
