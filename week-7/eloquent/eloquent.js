// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var myName = "Alex"
console.log(myName.length)

// var food = prompt("What is your favorite food?")
// alert(food + ' is my favorite too!')


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (var i = 1; i <=100; i++){
  if (i % 3 === 0 && i % 5 === 0){
    console.log('FizzBuzz');
  }
  else if(i % 5 === 0){
    console.log('Buzz');
  }
  else if(i % 3 === 0){
    console.log('Fizz');
  }
  else{
    console.log(i);
  }
}


// Functions
function min(num1, num2){
  if (num1 < num2) {
    return num1;
  }
  else if (num1 > num2){
    return num2;
  }
  else{
    console.log("They are equal");
  }
}

console.log(min(1,2))
min(2,2)
// Complete the `minimum` exercise.



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name:'Alex',
  age: 26,
  favorite_foods: ['pizza','ice-cream','pears'],
  quirk:'I only like to wear one sock'
};