// var phrases = ["long phrase","longest phrase","longer phrase"]

// var methodtothemadness = function(phrases) {

// var array = phrases.sort()
// return array[phrases.length - 1]
// };
// // methodtothemadness(phrases)

// console.log(methodtothemadness(phrases))

object1 = {name: "Steven", age: 54}
object2 = {name: "Tamir", age: 54}

// var objectificationcomparison (object1, object2)


var compareobjects = function(object_1, object_2) {

object1_keys = Object.keys(object_1)

object2_keys = Object.keys(object_2)



for (var i = 0; i <= object1_keys.length; i++) {

	objectvalues_1 = object_1[object1_keys[i]]

object2_values = object_2[object2_keys[i]]

if (object1_keys[i] == object2_keys[i] && objectvalues_1 == object2_values) {
	return true;}
;}

};

//  First creates random array and random string
// then creates the first for loop that uses num to create the number of array elemets to be in the array
//  Set i = 1 because i++ adds one extra element when started at 0 because of indexing
//second for loop creates alphabet to randomly select from.  here I use the math random function i found on the internet to produce a random number.  Have to * 10 because apparently random only procudes decimals.
//use mathrandom as a counter for my for
//also use it as an index for my letters array
//then reutrn the array. 

console.log(compareobjects(object1, object2))

var randwordgenerator = function(num) { 
// 	var randomword = ""
// 	var letters = ["a", "b", "c", "d", "e", "f", "g", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s"]
// 	for (var i = 0; i <= Math.floor(Math.random() * 10); i++) {
// 	randomword = randomword + letters[Math.floor(Math.random() * 10)]
// }

	var randomarray = []
		for (var i = 1; i <= num; i++) {

			var randomword = ""
			var letters = ["a", "b", "c", "d", "e", "f", "g", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s"]
				for (var x = 0; x <= Math.floor(Math.random() * 10); x++) {
				randomword = randomword + letters[Math.floor(Math.random() * 10)]
				}
			randomarray.push(randomword)
		;}
			return randomarray
};



console.log(randwordgenerator(4))







//method should be able to compare if there is a key value pair shared by two different objects
//


// var reverse = function(name) { 
//   var sum = ""
//   if (name == "robot") {
// 	console.log("Robot Party!");}
//   for (var i = 1; i <= name.length; i++) {
// 	sum = sum + name[name.length - i];}
  
//   console.log(sum);

// };

// reverse("robot");
