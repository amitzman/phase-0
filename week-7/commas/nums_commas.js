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




// Reflection
console.log(separateComma(1000000000000))