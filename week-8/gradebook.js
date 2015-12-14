/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]



// __________________________________________
// Write your code below.

// //Release 1 Create a gradebook
// var gradebook = {}


// //Release 2 Add Students to gradebook
// for (var i = 0; i < students.length; i++){
//   gradebook[students[i]] = {}
// }

// //Release 3 Add Test Scores
// for (var i = 0; i < scores.length; i++){
//   gradebook[students[i]]['testScores'] = scores[i]
// }

// //Release 4 Add New Scores
// gradebook['addScore'] = function(name, score){
//   gradebook[name].testScores.push(score);
// }

// //Release 5: Create a Function to Calculate Averages
// gradebook.getAverage = function(){}


// //Release 6: Create a Function to Average Grades
// average = function(numArray){
//  var sum = 0;
//   for(var element = 0; element < numArray.length; element++)
//     {
//       sum += numArray[element];
//     }
//   return sum/numArray.length;
// }

// //Release 7: Modify getAverage Function
// gradebook.getAverage = function(name){
//   return average(gradebook[name].testScores)

// }


// console.log(gradebook)







// __________________________________________
// Refactored Solution
//Release 1 Create a gradebook
var gradebook = {}


//Release 2 Add Students to gradebook
for (i in students){
  gradebook[students[i]] = {}
}

//Release 3 Add Test Scores
for (i in students){
  gradebook[students[i]]['testScores'] = scores[i]
}

//Release 4 Add New Scores
gradebook['addScore'] = function(name, score){
  gradebook[name].testScores.push(score);
}

//Release 5: Create a Function to Calculate Averages
gradebook.getAverage = function(){}


//Release 6: Create a Function to Average Grades
average = function(numArray){
  return  numArray.reduce(function(a,b) {return a+b;})/numArray.length
}

//Release 7: Modify getAverage Function
gradebook.getAverage = function(name){
  return average(gradebook[name].testScores)
}


console.log(gradebook)




// __________________________________________
// Reflect

// What did you learn about adding functions to objects?

  // I learned that functions are added the same way as any other property.

// How did you iterate over nested arrays in JavaScript?

  // Used for loops.  Set a counter and I used the counter as the index number then to access the arrays of students.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?

  // The reduce method.  Allows you to take an array of numbers and will reduce it down to a single value.  In this case I was able to add each number in the array and it returned a single value of the sum.  Then I was able to divide that by the length of the array to get the average.







// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)