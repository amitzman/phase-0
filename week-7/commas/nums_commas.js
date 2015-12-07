/*
Your previous Ruby content is preserved below:

// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Define function that has an integer as an arguement.
// Take the integer, turn it a string, then turn it into an array with each digit as it's own element.
// Create variable as the array length
// IF array length is less than 4
//  THEN return original integer as a string
// ELSE depending on length of integer, create different functions on where to insert the commas using a case
// FOR each array element determine whether a commas is necessary and if so add it on
// Return combined string */



// Initial Solution
// function separateComma(integer){
//   var numString = integer.toString();
//   var numArray = numString.split('');
//   var length = numArray.length;

//   if (length<4){
//     return numString
//   } else if (length%3 == 0){

//     for (var i=0; i<(length-1); i +=1){
//       if ((i+1)%3 == 0){
//         numArray[i] = numArray[i]+','
//       } else {
//         numArray[i] = numArray[i]
//       }
//     }
//     return numArray.join('')

//   } else if (length%3 == 1){
//     for (var i=0; i<(length-1); i +=1){
//       if (i%3 == 0){
//         numArray[i] = numArray[i]+','
//       } else {
//         numArray[i] = numArray[i]
//       }
//     }
//     return(numArray.join(''))
//   } else {
//         for (var i=0; i<(length-1); i +=1){
//       if ((i-1)%3 == 0){
//         numArray[i] = numArray[i]+','
//       } else {
//         numArray[i] = numArray[i]
//       }
//     }
//     return(numArray.join(''))
//   }





//   };



// Refactored Solution
function separateComma(integer){
  // var numString = integer.toString();
  var numArrayReverse = integer.toString().split('').reverse();
  var length = numArrayReverse.length;

  if (length<4){
    return numArrayReverse.reverse().join('')
  }
  else {
    for (var i = 3; i < length ; i+=3 ){
     numArrayReverse[i] = numArrayReverse[i] + ','
    }
return numArrayReverse.reverse().join('')
  }
}

// Your Own Tests (OPTIONAL)
console.log(separateComma(1000000000000))



// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

  // We had a very similar approach to the one I had for my solo challenge a couple weeks ago.  Felt it made it much easier to approach with JavaScript.

// What did you learn about iterating over arrays in JavaScript?

  // I learned that they are very similar to Ruby and that they are pretty much the same fundamental wise but very different syntax wise.


// What was different about solving this problem in JavaScript?

  // Just the syntax was different as well the properties of arrays and strings.

// What built-in methods did you find to incorporate in your refactored solution?

  // We didn’t incorporate, but through researching we found a splice method that looked like it could work.  Which will insert a string a specified element in an array.  But we couldn’t quite get it to work.