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

console.log(Object.Values(object1))

var compareobjects = function(object_1, object_2) {

object1_keys = Object.keys(object_1)

object1_values = object_1.values

object2_keys = Object.keys(object_2)

object2_values = Object.values(object_2)

for (var i = 0; i <= object1_keys.length; i++) {

if (object1_keys[i] == object2_keys[i] && object1_values[i] == object2_values[i]) {
	return object2_keys[i];}
;}

};


// console.log(compareobjects(object1, object2))
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
