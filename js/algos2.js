// FUNCTION: findLongest, Takes an array.
// Defines an empty array for the length of the strings in the array.
// Runs a loop to add the string lengths to the second array.
// Finds the index of the highest value in the string length array.
// Returns the string at the same index in the original array.

function findLongest(ary) {
  var strLengthArray = [];
  for (var i = 0; i < ary.length; i++) {
    strLengthArray.push(ary[i].length);
  }
  var largest = Math.max.apply(Math, strLengthArray);
  return (ary[(strLengthArray.indexOf(largest))]);
}
// DRIVERCODE:
// console.log(findLongest(["long phrase","longest phrase","longer phrase"]));

// FUNCTION: checkMatch: takes two objects as arguments.
// Sets variable isMatch value to begin as false.
// Creates variables out of the keys in the objects.
// Checks if the keys match with the key variables.
// Checks if the values match using the key variables to access the values.
// Returns match boolean value.

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
console.log(checkMatch({name: "Steven", age: 53}, {name: "Tamir", age: 54})); 
console.log(checkMatch({name: "Steven", age: 53}, {name: "Steven", age: 54})); 
