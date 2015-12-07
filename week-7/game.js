// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Kill or Escape the Boogie Man
// Goals: Select correct weapon, kill or escape Boogie Man
// Characters: Player and Boogie Man
// Objects: Player(damage, position, health).  Boogie Man(health, position)
// Functions: weapon and move

// Pseudocode
//Declare a 'player' object that will have a position, damage, and health properties
//Add a method that sets a damage value based on weapon choice
//Add a move method that changes the position of the player
//Declare a 'Boogie Man' object with health and position properties
//Check the position of the player and Boogie Man
//IF player position is === to Boogie Man position
  //IF player damage is greater than or equal to Boogie Man health then player wins
  //ELSE player loses
//IF player position is not equal to Boogie Man, then tell player to move again.
//IF player position is equal to 5 then end the game.

// Initial Code


// var player = {
//   damage: 0,
//   pos: 0,
//   health: 100,

//   move: function(direction) {
//     if(direction ==='right'){
//       this.pos +=1
//   }
//   else{
//     this.pos +=1
//   }
//   },

//   weapon: function(weapon) {
//     if(weapon === 'gun'){
//       this.damage += 50;
//     }
//     else if(weapon === 'ax') {
//       this.damage += 30;
//     }
//     else {
//       this.damage +=10;
//     }
//   }
// }

// var boogieMan = {
//   health: 30,
//   pos: Math.floor(Math.random()*10)+1,
// }

// console.log("You are having a nightmare, the Boogie Man is chasing you around. Please select a weapon: gun, ax, or anything else")
// player.weapon('gun')
// player.move('right')
// player.move('left')
// console.log("The Boogie Man's position is " + boogieMan.pos)
// console.log("Your position is " + player.pos)

// if(player.pos === boogieMan.pos){
//   console.log("You attack");
//   if(player.damage >= boogieMan.health){
//     console.log("You defeated the Boogie Man!")
//   }
//   else
//   {
//     console.log("The Boogie Man ate your dreams and killed you! :(")
//   }

// }
// else if(player.pos === 5){
//   console.log("You woke up after moving around too much")
// }
// else{
//   console.log("move again")
// }





// Refactored Code
var player = {
  damage: 0,
  pos: 0,

  move: function() {
    for(var i = 0; i <= 10; i++){
      player.pos = i
    }
if(player.pos === boogieMan.pos && player.damage >= boogieMan.health){
  console.log("You attack");
  console.log("You defeated the Boogie Man!")
  }
  else if(player.pos === boogieMan.pos && player.damage <= boogieMan.health)
  {
    console.log("The Boogie Man ate your dreams and killed you! :(")
  }

else if(player.pos === 10){
  console.log("You woke up after moving around too much")
}
else{
  console.log("move again")
}

},

  weapon: function(weapon) {
    if(weapon === 'gun'){
      this.damage += 50;
    }
    else if(weapon === 'ax') {
      this.damage += 30;
    }
    else {
      this.damage +=10;
    }
  }
};

var boogieMan = {
  health: 30,
  pos: Math.floor(Math.random()*10)+1,
}




player.weapon('gun')
player.move()




// Reflection
//What was the most difficult part of this challenge?

  // The most difficult part for me was the planning of the game and then also having function work when I called on it.  Pretty sure I fixed it, I just needed to included the if statement to compare the player and enemy’s position inside the function.

// What did you learn about creating objects and functions that interact with one another?

  // Learned that we can set an Object property to function which will modify another property of the Object.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
  // Did not use any new built in methods.  Will try to go in later when I expand the game to see if there are any methods.

// How can you access and manipulate properties of objects?

  // They can be accessed with the .property notation.  Like object.property = 5, will either create a new property with the value 5 or change the existing property to 5.
