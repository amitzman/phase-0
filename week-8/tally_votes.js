// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Albert
// This challenge took me [1.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Bob should receive 3 votes for President
  //Iterate through the votes object.
  //Iterate through each value(which is an object) of each key
    //IF there is a property named 'president' with a value of 'Bob'
    //then we will add it to the voteCount object and if it already exists increment the value by 1.

// Bob should receive 2 votes for Vice President
  //Same thing for the president solution, except subsitute president for vice president.

// Bob should receive 2 votes for Secretary
  //Same thing as above, except subsitute Secretary in for vice presdient.

// Bob should receive 4 votes for Treasuer
  //Same thing as above, except sub Treasuer in for Secretary

// Louise should be elected president
  //Iterate through officers object
  // Return highest value of each property from voteCount
// __________________________________________
// Initial Solution

// Solution for Bob should recieve 3 votes for President.
/*
// for (var voter in votes){
//   if (votes[voter].hasOwnProperty('president')){
//       if(voteCount['president'].hasOwnProperty(votes[voter]['president'])){
//       voteCount['president'][votes[voter]['president']] += 1;
//     }
//       else {
//         voteCount['president'][votes[voter]['president']] = 1;
//     }
//   }
// }

// Solution for Bob should receive 2 votes for Vice President

for (var voter in votes){
  if (votes[voter].hasOwnProperty('vicePresident')){
      if(voteCount['vicePresident'].hasOwnProperty(votes[voter]['vicePresident'])){
      voteCount['vicePresident'][votes[voter]['vicePresident']] += 1;
    }
      else {
        voteCount['vicePresident'][votes[voter]['vicePresident']] = 1;
    }
  }
}

// Solution for Bob should receive 2 votes for secretary

for (var voter in votes){
  if (votes[voter].hasOwnProperty('secretary')){
      if(voteCount['secretary'].hasOwnProperty(votes[voter]['secretary'])){
      voteCount['secretary'][votes[voter]['secretary']] += 1;
    }
      else {
        voteCount['secretary'][votes[voter]['secretary']] = 1;
    }
  }
}

// Solution for Bob should receive 2 votes for treasurer

for (var voter in votes){
  if (votes[voter].hasOwnProperty('treasurer')){
      if(voteCount['treasurer'].hasOwnProperty(votes[voter]['treasurer'])){
      voteCount['treasurer'][votes[voter]['treasurer']] += 1;
    }
      else {
        voteCount['treasurer'][votes[voter]['treasurer']] = 1;
    }
  }
}

// Solution for electing Louise as president

for (var position in officers){
  officers[position] = Object.keys(voteCount[position]).reduce(function(a, b){return voteCount[position][a] > voteCount[position][b] ? a : b});


}

console.log(officers)
*/



// __________________________________________
// Refactored Solution

for (var voter in votes){
  for (var position in officers){
  if (votes[voter].hasOwnProperty(position)){
      if(voteCount[position].hasOwnProperty(votes[voter][position])){
      voteCount[position][votes[voter][position]] += 1;
    }
      else {
        voteCount[position][votes[voter][position]] = 1;
    }
  }
  }
}

for (var position in officers){
  officers[position] = Object.keys(voteCount[position]).reduce(function(a, b){return voteCount[position][a] > voteCount[position][b] ? a : b});


}

console.log(officers)




// __________________________________________
// Reflection
// What did you learn about iterating over nested objects in JavaScript?

  // When it comes iterating, learned the useful method .hasOwnProperty which came in handy.  Learned that testing is very critical at least for now, when doing multiple loops through objects, just to see what property and value we’re accessing.

// Were you able to find useful methods to help you with this?

  // The Object.keys and .reduce function were very clutch for being able to list all of the winners.  Object.keys was able to turn into an array of each voter name.  Then we were able to use the .reduce to be able to compare each value of each element to determine the highest one.

// What concepts were solidified in the process of working through this challenge?

  // Iterating over nested objects.  Good to get more experience doing it.  Felt we did a good job breaking it down into very small steps which helped make refactoring much easier.





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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)