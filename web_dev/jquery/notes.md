Understand the Syntax of Jquery
  -Understand the uses cases
  -Understand things unique tow writing in jquery
  -Understand how variables play in jquery
  -Understand the functions and how to write them
  -Understand how it fits with javacript
  -Understand how it fits with the DOM

Used w3schools

Need to have jquery to work need the libary file either in the same directory or grab the link from a Content Delivery Network

The jQuery syntax is tailor-made for selecting HTML elements and performing some action on the element(s).

Basic syntax is: $(selector).action()

A $ sign to define/access jQuery
A (selector) to "query (or find)" HTML elements
A jQuery action() to be performed on the element(s)

Examples:

$(this).hide() - hides the current element.

$("p").hide() - hides all <p> elements.

$(".test").hide() - hides all elements with class="test".

$("#test").hide() - hides the element with id="test".

$(document).ready(function(){

   // jQuery methods go here...

}); is a method that says only executes when the whole page has loaded.

or optionally there is

$(function(){

   // jQuery methods go here...

});



Selectors

Syntax  Description Example

$("*")  Selects all elements  Try it

$(this) Selects the current HTML element  Try it

$("p.intro")  Selects all <p> elements with class="intro" Try it

$("p:first")  Selects the first <p> element Try it

$("ul li:first")  Selects the first <li> element of the first <ul>  Try it

$("ul li:first-child")  Selects the first <li> element of every <ul>  Try it

$("[href]") Selects all elements with an href attribute Try it

$("a[target='_blank']") Selects all <a> elements with a target attribute value equal to "_blank"  Try it

$("a[target!='_blank']")  Selects all <a> elements with a target attribute value NOT equal to "_blank"

$(":button")  Selects all <button> elements and <input> elements of type="button" Try it

$("tr:even")  Selects all even <tr> elements  Try it

$("tr:odd") Selects all odd <tr> elements



What are Events?
All the different visitor's actions that a web page can respond to are called events.

An event represents the precise moment when something happens.

Examples:

moving a mouse over an element
selecting a radio button
clicking on an element

The term "fires/fired" is often used with events. Example: "The keypress event is fired, the moment you press a key".

Here are common syntax for working with events and functions.

$("p").click(function(){
  // action goes here!!
});

if you write this in the selector like $(this), the particular item you assigned event will be manipulated.
events:
.click()
.dblclick()
.mouseenter()
.mouseleave()
.mousedown()
.mouseup()
.hover() - Takes two functions

Hover exampe

$("#p1").hover(function(){
    alert("You entered p1!");
},
function(){
    alert("Bye! You now leave p1!");
});

.on()





animate loop

<script>
$(document).ready(function(){
    $("button").click(function(){
        var div = $("div");
for (i = 0; i < 200; i++) {


        div.animate({height: '300px', opacity: '0.4'}, "slow");
        div.animate({width: '300px', opacity: '0.8'}, "slow");
        div.animate({height: '100px', opacity: '0.4'}, "slow");
        div.animate({width: '100px', opacity: '0.8'}, "slow");
;}
    });
});
</script>



