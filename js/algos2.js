// FUNCTION: findLongest, takes an array.
// Defines an empty array strLengthArray
// Runs a loop to add the string lengths to the second array.
// Finds the index of the highest value in the stringLengthArray.
// Returns the longest string: the string at the same index in the inputted array.

// FUNCTION: checkMatch, takes two objects as arguments.
// Sets variable isMatch value to begin as false.
// Creates variables out of the keys in the objects.
// Checks if the keys match with the key variables.
// Checks if the values match using the key variables to access the values.
// Returns isMatch boolean value.

// FUNCTION: randomString, no input.
// Defines variable stringLength which is a random number between 1 and 10.
// Defines empty array randomChars.
// Defines variable alph which is a string of the lower case alphabet.
// Adds the number that is stringLength of randomly selected characters from the alphabet string to the randomChars string.
// Returns randomChars string.

// FUNCTION: stringNumber, takes a number as argument.
// Defines empty array called randArray.
// Calls randomString function and adds results to randArray the user inputted number of times.
// Prints and returns randArray

function findLongest(ary) {
  var strLengthArray = [];
  for (var i = 0; i < ary.length; i++) {
    strLengthArray.push(ary[i].length);
  }
  var largest = Math.max.apply(Math, strLengthArray);
  return (ary[(strLengthArray.indexOf(largest))]);
}

function checkMatch(obj1, obj2) {
  var isMatch = false;
  for ( var obj1_key in obj1 ) {
    for ( var obj_2key in obj2) {
      if (obj1_key == obj_2key) {
        if (obj1[(obj1_key)] == obj2[(obj_2key)]) {
          isMatch = true;
        }
      }
    }
  }
  return isMatch
}

function randomString() {
  var stringLength = Math.floor( Math.random() * 9 +1 );
    var randomChars = "";
    var alph = "abcdefghijklmnopqrstuvwxyz";
  for( var i=0; i < stringLength; i++ )
        randomChars += alph.charAt(Math.floor(Math.random() * alph.length));
  return randomChars;
}

function stringNumber(chosenNumber) {
  var randArray = [];
  for (var i = 0; i < chosenNumber; i++) { 
    randArray.push((randomString()));
  }
  console.log(randArray)
  return randArray;
}

// DRIVERCODE:
console.log(findLongest(["long phrase","longest phrase","longer phrase"]));
console.log(checkMatch({name: "Steven", age: 53}, {name: "Tamir", age: 54})); 
console.log(checkMatch({name: "Steven", age: 53}, {name: "Steven", age: 54})); 
console.log(findLongest((stringNumber(5))));