// Variable for the current active tab/content pair
// 
// Is set by calling the get_elements function
// 
// Returns a String of the currently show tab/content class pair
var current_active_tab = function() {
  var v = get_elements("show");
  return v[0].classList[0];
}
// Function that gets a list of Elements that have the passed class in them
// 
// Takes 1 argument, the Element class to look for
// 
// Returns an Array of Elements which have the class passed as an argument
function get_elements(element_name) {
  var list = document.getElementsByClassName(element_name);
  return list
}
// Function that takes the Class passed, finds the Elements that Class is on, 
// and toggles classes on those Elements.
// 
// Takes 1 argument, the Class we want to find in our Elements
// 
// Returns nothing, just changing the classes by toggling them.
function change_active_box_state(class_to_find) {
  var element_to_change = get_elements(class_to_find);
  element_to_change[0].classList.toggle("notactive");
  element_to_change[1].classList.toggle("show");
  element_to_change[1].classList.toggle("hide");
}
// Function that gets the tab we want to change.  Used through our Event Handler called function below.
// 
// Accepts one argument, the Id of the Element we are targetting with our Event Handler
// 
// Returns the Class of the Element we want to target.
function get_new_box_to_change(element_to_change) {
  var tar = document.getElementById(element_to_change).classList[1];
  console.log(tar);
  return tar;
}
// Function that our Event Handler calls, setting a variable equal to the Element Id that
// we click on.  We then change the Classes on the elements of our active set of tabs/content to
// notactive, and set the target elements to active with our toggle functions.
// 
// Takes no arguments
// 
// Returns nothing
function change_page_state() {
  var element_to_change = this.id
  change_active_box_state(current_active_tab());
  change_active_box_state(get_new_box_to_change(element_to_change));
  current_active_tab
}

window.onload = function() {
  var all = document.getElementById("tabs").children;
  for (i = 0; i < all.length; i++) {
    all[i].addEventListener("click", change_page_state);
  }
}