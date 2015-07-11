var current_active_tab = function() {
  var v = get_elements("show");
  return v[0].classList[0];
}

function get_elements(element_name) {
  var list = document.getElementsByClassName(element_name);
  return list
}

function change_active_box_state(element_to_change) {
  var element_to_change = get_elements(element_to_change);
  element_to_change[0].classList.toggle("notactive");
  element_to_change[1].classList.toggle("show");
  element_to_change[1].classList.toggle("hide");
}

function get_new_box_to_change(element_to_change) {
  var tar = document.getElementById(element_to_change).classList[1];
  console.log(tar);
  return tar;
}

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