


function changeSize(event) {
  console.log(event);
  event.target.style.backgroundColor = "white" 
  event.target.style.float = "right" 
}
var background = document.getElementById("main_content");
background.addEventListener("click", changeSize);


