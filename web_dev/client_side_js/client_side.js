function hideImage(event) {
	photo.hidden = true;
	console.log("Image is hidden")
}

var photo = document.getElementById("flag");
photo.addEventListener("mouseover", hideImage);

var heading = document.getElementsByTagName("em");
var head = heading[0];

head.style.border = "5px solid black";

heading.style.border = "5px solid black";