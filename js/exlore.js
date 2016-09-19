// Creates a function that takes in name
// Creates new string sum, which be the sum of all our reverse letters
// Create a for loop after the string is created
// The for loop will increment by 1 each time and start and 1, and will continue until i is just equal to
// every time the loop is run the new string will have the letters of the word passed through in reverse.



var reverse = function(name) { 
  var sum = ""
  for (var i = 1; i <= name.length; i++) {
	sum = sum + name[name.length - i];}
  
  console.log(sum);

};

reverse("hey");
