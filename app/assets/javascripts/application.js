document.addEventListener('DOMContentLoaded', function(){

  // INITIALIZE DRAFT BOARD

  var you = 1;
  var computers = 3;
  var rounds = 12;
  var table = document.querySelector("table");
  var buttons = document.querySelectorAll("button");

  // Make user the first row.

  table.rows[1].insertCell(-1).innerHTML = "You";

  // Make the other rows for the computer.

  for (var i = 2; i <= (you + computers); i++) {
    table.rows[i].insertCell(-1).innerHTML = "Computer";
  }

  // Adds event listener to buttons in list of available players.

  for (var i = 0; i < buttons.length; i++) {
      buttons[i].addEventListener("click", pickPlayer);
  };
});

function pickPlayer(e){
  var table = document.querySelector("table");
  var playerName = e.target.parentNode.parentNode.children[1].innerHTML;
  var playerid = e.target.id
  addToBoard(e.target, playerName);
  removeFromList(e.target);
  addToPickedBoard(e.target);
  $.ajax({
    url:"/update",
    method:"POST",
    data:playerid
  }).success(function(data) {
    console.log("got success")
  }).fail(function(){console.log("FAILURE")})
}

function addToBoard(e, playerName){
  var table = document.querySelector("table");
  var entry = table.rows[1].insertCell(-1);
  entry.innerHTML = playerName;
};

function addToPickedBoard(e){
  var row = e.parentNode.parentNode;
  row.deleteCell(-1)
  document.querySelector(".picked").appendChild(row);
};

function removeFromList(e){
  e.parentNode.parentNode.parentNode.removeChild(e.parentNode.parentNode);
};

