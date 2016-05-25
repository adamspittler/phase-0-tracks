var colors = ["blue", "white", "black", "green"];
var names = ["bill", "charlie", "mary", "darleen"];

names.push("chuck");
colors.push("yellow")
console.log(names);
console.log(colors);

var horses = {};

for (var i = 0; i < colors.length; i++) {
  horses[(names[i])] = (colors[i]);
}
console.log(horses);