// define an array as a variable.
// define an empty array for the length or the strings in the first array
// run a loop to add the string lengths to the second array
// find the index of the highest value in the string length array.
// return the string at the same index in the original array.

var ary = ["long phrase","longest phrase","longer phrase"];
var str_length_array = [];


for (var i = 0; i < ary.length; i++) {
str_length_array.push(ary[i].length);
}

//console.log(str_length_array);
//console.log(ary);

var largest = Math.max.apply(Math, str_length_array);


var largest_index = (str_length_array.indexOf(largest));

console.log(ary[largest_index]);