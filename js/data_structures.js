var colors = ["green", "red", "yellow", "blue"];

var horses = ["Pickles", "Flowers", "Reindeer", "Pillows"];

console.log(colors);

console.log(horses);

colors.push("Orange");

horses.push("Guitar");

console.log(colors);

console.log(horses);


var colored_horses = {};

for (var i = 0; i < horses.length; i++) {
  colored_horses[horses[i]] = colors[i]
}

console.log(colored_horses)

function Car(make, model, isNew) {
  console.log("Our new car:", this);
  
  this.make = make;
  this.model = model;
  this.isNew = isNew;
  
  this.honk = function() { console.log("Honk!"); };
  
  console.log("CAR ASSEMBLY COMPLETE");
}

console.log("Let's buy a car ...");
var car1 = new Car("Honda", "Civic", true);
console.log(car1);
console.log("Our car honks:");
car1.honk();
console.log("----");

console.log("Let's buy a car ...");
var car2 = new Car("Toyota", "RAV4", true);
console.log(car2.make);
console.log("Our car honks:");
car2.honk();
console.log("----");