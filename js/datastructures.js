// var colors = ["blue", "red", "purple", "teal"];
// var names = ["Andrew", "Van", "Sky", "Von"];

// colors.push("orange");
// names.push("Lightening");

// console.log(colors);
// console.log(names);

// var object = {};

// for(var i =0; i <names.length; i++){

// 	object[names[i]] = colors[i];
// }

// console.log(object);

function Car(company, model, year, isElectric){

	console.log("This is our new car:", this);

	this.company = company;
	this.model = model;
	this.year = year;
	this.isElectric = isElectric;

	this.vroom = function(){
		console.log("Zoom Zoom!");

	};

}

var car = new Car("Honda", "Civic", 2009, false );
console.log(car);
car.vroom();

var car = new Car("Toyota", "Prius", 2016, false );
console.log(car);
car.vroom();

var car = new Car("Ford", "F-150", 2014, false );
console.log(car);
car.vroom();