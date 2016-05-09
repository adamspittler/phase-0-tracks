// Release 0
// Takes an array.
// Defines an empty array for the length of the strings in the array.
// Runs a loop to add the string lengths to the second array.
// Finds the index of the highest value in the string length array.
// Returns the string at the same index in the original array.
// Returns the longest word.
function find_longest(ary) {
	var str_length_array = [];
	for (var i = 0; i < ary.length; i++) {
		str_length_array.push(ary[i].length);
	}
	var largest = Math.max.apply(Math, str_length_array);
	var largest_index = (str_length_array.indexOf(largest));
	var longest_word = (ary[largest_index]);
	return longest_word;
}


// Release 1
// Creates a function that takes two hash/objects as arguements.
// Sets match value to begin as false.
// Creates variables out of the keys in the objects.
// Checks if the keys match with the key variables.
// Checks if the values match useing the key variables to access the values.
// Returns match boolian value.
function check_match(obj1, obj2) {
	var	match = false;
	for ( var obj1_key in obj1 ) {
		for ( var obj_2key in obj2) {
			if (obj1_key == obj_2key) {
				if (obj1[(obj1_key)] == obj2[(obj_2key)]) {
					match = true;
				}
			}
		}
	}
	// Prints match status.
	if (match === true) {
		console.log('there is a match');}
	else {
		console.log('there is no match');
	}
}


// Release 2
// Creates a random string function that generates a random string of charactors derived from the alphabet.
// The length of the string set to be a random number between 1 and 10.
// Returns a random string of random length.
function random_string() {
	var set_length = Math.floor( Math.random() * 9 +1 );
    var random_text = "";
    var alph = "abcdefghijklmnopqrstuvwxyz";
	for( var i=0; i < set_length; i++ )
        random_text += alph.charAt(Math.floor(Math.random() * alph.length));
	return random_text;
}
// Creates user defined number of random strings function.
// User input is taken as the arguement and is used to set the number of times the random string function is called.
// Defines an array and the random strings are passed to it.
// Returns Array with random strings.
function number_of_strings(chosen_number) {
	var array = [];
	for (var i = 0; i < chosen_number; i++) {	
		var rando = (random_string());
		array.push(rando);
	}
	console.log(array)
	return array;
}

//DRIVERCODE
console.log(find_longest((number_of_strings(5))));









//check_match(({name: "Steven", age: 54}), ({name: "Tamir", age: 54}))