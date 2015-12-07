// JavaScript Olympics

// I paired [with:Kerry] on this challenge.

// This challenge took me [1.5] hours.


// Warm Up




// Bulk Up
var athletes = [{name:'Alex', event:'Basketball'}, {name:'Kerry', event:'Football'}]

function bulkUp (array) {
  for (var i= 0; i < array.length; i++) {
    array[i].win = array[i].name + " won gold in " + array[i].event
  };
  return array
}

console.log(bulkUp(athletes))

// Jumble your words
var jumble = function(string) {
   return string.split('').reverse().join('');

};
console.log(jumble("!sdrow ruoy elbmuJ"));


// 2,4,6,8
function evenNums(array) {
 function evens(array) {
  return array % 2 === 0;
  }
  return array.filter(evens)
}

console.log(evenNums([1,2,3,4,5,6,7,8]))


// "We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote =  quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
// What JavaScript knowledge did you solidify in this challenge?

  // Getting more comfortable going through the MDN files to research.  As well as iterating through arrays and modifying them.

// What are constructor functions?

  // Constructor functions are similar to classes in Ruby.  It’s a way that we can easily create an Object and would be best used if we plan on creating many of those objects.

// How are constructors different from Ruby classes (in your research)?

  // In Ruby, we can create methods for the class and can be called upon on an instance.  Whereas it doesn’t appear the same with the constructors.