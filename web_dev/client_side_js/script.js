// console.log("The script is running!");

// function addPinkBorder(event) {
//   console.log("click happened! here's the click event:");
//   console.log(event);
//   event.target.style.border = "2px solid pink";
// }

// var photo = document.getElementById("lizard-photo");
// photo.addEventListener("click", addPinkBorder);



var item = document.getElementById("button1")
item.style.backgroundColor = "green";

function change_color(event) {
  event.target.style.backgroundColor = "red"
}

item.addEventListener("click", change_color);
