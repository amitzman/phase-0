// U3.W9:JQuery


// I worked on this challenge [by myself, with: Monique ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
bodyElement = $('body');
imageElement = $( "img" );

//RELEASE 4: Event Listener
  // Add the code for the event listener here
$(".header").css ({"color": "green", "border": "2px solid black", "visibility": "initial"});
$(".mascot h1").html("Chorus Frogs");
//RELEASE 5: Experiment on your own

$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://data.whicdn.com/images/5664475/original.jpg')
  })

$('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })

//RELEASE 6:
$( "img" ).click(function() {
  $( "img" ).animate({
    width: "toggle",
    height: "toggle"
  })
  })


})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// *** REFLECTION ****

// What is jQuery?

  // jQuery is a lightweight, 'write less, do more' JavaScript library

// What does jQuery do for you?

  //jQuery takes a lot of common tasks that require many lines of JavaScript code to accomplish, and wraps them into methods that you can call with a single line of code.

// What did you learn about the DOM while working on this challenge?

  //Learned about some of the animations that can be done to elements when clicking and having a mouseover the elements