// PSUEDOCODE:

// Create a empty object for Grocery List
// Add item to the list.  Item name is key, item quantity is the property of the key.
// Function to delete a key of the object.
// Create a function to update the properties of each key in the object
// Function that prints the list


var groceryList = {};

function addItem(item, qty) {
  groceryList[item] = qty;
}

function removeItem(item) {
  delete groceryList[item];
}

function updateQty(item, qty) {
    if (groceryList.hasOwnProperty(item)) {
      groceryList[item] = qty
    }
}

function printList(list) {
  for (var item in list) {
    console.log(item + ': ' + list[item]);
  }
}

addItem('pizza', 5);
addItem('bread', 11);
addItem('hot dogs', 50);
addItem('cookies', 4);
removeItem('bread');
updateQty('pizza', 25);
printList(groceryList);

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

  // Looping and constructing objects.

// What was the most difficult part of this challenge?

  // Nothing was that difficult.  It was pretty much things that I've been comfortable with

// Did an array or object make more sense to use and why?

//Object made more sense to use the property as the item and value as the quantity.