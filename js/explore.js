// set string as variable str
// set the variable i to be str length
// while i is greater or equal to 0 
// loop through str and print the charactor at index i
// define an empty variable reversed
// put the charactor at index i into reversed.

function reverse(string) {
	var str = string
	var reversed = '';
	for (var i = str.length - 1 ; i >= 0; i--) {
		reversed = reversed + (str[i]);
		//console.log (str[i]);
	}
	console.log (reversed);
}

// DRIVER CODE
var x = 9
if (10 > x) {
	(reverse("cheese danish"))
}