// function: reverse. Takes a string.
// Define empty string.
// Iterate through the string from last to first and add each character to empty string variable.
// Returns string.

function reverse(string) {
var string2 = "";
for (var i = string.length -1; i>= 0; i--) {
  string2 += (string[i]);}
  return string2
}
var teststring = "this is a test"
if (10 < teststring.length) {
console.log(reverse(teststring));
}
else {console.log(teststring);
}