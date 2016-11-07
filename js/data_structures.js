
var horseColors = ["pink","blue","white","brown"];
var horseNames = ["Ed","Sam","Harris","Donnatella"];
horseColors.push("purple");
horseNames.push("Princess Noor");

var horseHash = {};

for (var i=0; i < horseNames.length; i++){
	horseHash[horseNames[i]]=horseColors[i];
}
console.log(horseHash);


function Car(type, color, isAutomatic) {
	console.log("our new car:");
	this.type = type;
	this.color = color;
	this.isAutomatic = isAutomatic;
	this.goesFast = function() { console.log("Voom..Voom!"); };
	console.log("CAR INITIALIZATION COMPLETE");
	this.tooFast = true;
	this.slam_breaks = function() {
		if(this.tooFast){
			console.log("Screech!");
		}
		else {
			console.log("You're ok.. keep on cruzing!");
		}
	}
	
}
console.log();
var firstCar = new Car("sports", "red", true);
console.log(firstCar);
console.log("This car can go fast");
firstCar.goesFast();
firstCar.slam_breaks();
console.log("----");
console.log();

var secondCar = new Car("SUV", "black",false);
console.log(secondCar);
console.log("This car doesn't go too fast");
secondCar.tooFast = false;
secondCar.slam_breaks();
console.log("----");