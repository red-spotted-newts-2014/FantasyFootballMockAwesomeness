document.addEventListener('DOMContentLoaded', function(){

  // INITIALIZE DRAFT BOARD
  
  var you = 1;
  var computers = 3;
  var rounds = 12;
  
  // Make user the first row.

  var table = document.querySelector("table");
  table.rows[1].insertCell(-1).innerHTML = "You";

  
  for (var i = 0; i <= (you + computers); i++) {

  }

  var buttons = document.querySelectorAll("button");

  // Adds event listener to buttons in list of available players.
  for (var i = 0; i < buttons.length; i++) {
      buttons[i].addEventListener("click", pickPlayer);
  };
});

function pickPlayer(e){
  var playerID = e.target.id;
  var table = document.querySelector("table");

  addToBoard(e.target);
  removeFromList(e.target);
  addToPickedBoard(e.target);
}

function addToBoard(e){
  
  var table = document.querySelector("table");
  var tbody = document.querySelector("table").querySelector("tbody").children;
  var rounds = 12;
  var comp_players = 3;
  console.log(table);

  // console.log(tbody)
  // for(var pl = 0; pl <= rounds; pl++){
  //   for(var num = 0; num < comp_players; num++){
  //     var x = table.rows[num+2].insertCell(-1);
  //     x.innerHTML="anth"
  //   }
  //     var x = table.rows[1].insertCell(-1);
  //     x.innerHTML="you"
  // }
  // var x = table.rows[3].insertCell(-1);
  // x.innerHTML="New cell";
};

function addToPickedBoard(e){
  console.log(e.id);
  var row = e.parentNode.parentNode;
  console.log(row.deleteCell(-1));
  document.querySelector(".picked").appendChild(row);
};

function removeFromList(e){
  e.parentNode.parentNode.parentNode.removeChild(e.parentNode.parentNode);
};

