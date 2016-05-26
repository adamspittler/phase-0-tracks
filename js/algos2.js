// Function: findLongest, Takes an array.
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

console.log(findLongest(["long phrase","longest phrase","longer phrase"]));

