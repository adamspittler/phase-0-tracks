// var colors = ["blue", "white", "black", "green"];
// var names = ["bill", "charlie", "mary", "darleen"];
// names.push("chuck");
// colors.push("yellow")
// console.log(names);
// console.log(colors);
// var horses = {};
// for (var i = 0; i < colors.length; i++) {
//   horses[(names[i])] = (colors[i]);
// }
// console.log(horses);

// FUNCTION
function Car(make, color, fuelMileage) {
console.log("our car:", this);
this.make = make
this.color = color
this.fuelMileage = fuelMileage
this.honk = function() {console.log("beep"); };
console.log("your stupid car:");
}

//DRIVERCODE
console.log("create a car.");
var newCar1 = new Car("Ford", "white", 24);
console.log(newCar1);
newCar1.honk();
var newCar2 = new Car("Mazda", "green", 33);
console.log(newCar2);
newCar2.honk();
var newCar3 = new Car("Suburu", "grey", 29);
console.log(newCar3);
newCar3.honk();