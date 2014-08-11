document.addEventListener('DOMContentLoaded', function(){

  // INITIALIZE DRAFT BOARD

  var you = 1;
  var computers = 3;
  var rounds = 12;
  var table = document.querySelector("table");
  var buttons = document.querySelectorAll(".xsmall-button");
  var nav_buttons = document.querySelectorAll(".large-button");

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

  for (var i = 0; i < nav_buttons.length; i++) {
      nav_buttons[i].addEventListener("click", modalButtons);
  };
});

function modalButtons(event){
  modal_id = event.target.id
  modal_transparent = document.querySelector(".modal-transparent-background")
  modal_transparent.addEventListener("click", closeModal)
  if (modal_id === "signup"){
    modal = document.querySelector("#signup-modal")
    modal.style.display = "inline";
    modal_transparent.style.display = "inline";
  }
  if(modal_id === "create-draft"){
    modal = document.querySelector("#questionaire")
    modal.style.display = "inline";
    modal_transparent.style.display = "inline";
  }
}

function closeModal(e){
  console.log(e.target)
    modals = document.querySelectorAll(".modal")
    for(var i = 0; i < modals.length;i++){
    modals[i].style.display = "none";

  }
  e.target.style.display = "none"
}

function pickPlayer(e){
  var table = document.querySelector("table");
  var playerName = e.target.parentNode.parentNode.children[1].innerHTML;
  var playerid = e.target.id
  addToBoard(e.target, playerName);
  removeFromList(e.target);
  limitClick(12);
  addToPickedBoard(e.target);
  $.ajax({
    url:"/update",
    method:"POST",
    data: {id: playerid },
    dataType: 'json'
  }).success(function(data) {
    CPPicks(data);
  }).fail(function(){console.log("FAILURE")})
}
var count = 1
  // set limit on click
  function limitClick() {
    var rounds = 12
    var buttons = document.querySelectorAll("button");
      if (count >= rounds) {
        for (var i=0; i< buttons.length; i++) {

        buttons[i].removeEventListener('click', pickPlayer, false)
        console.log(buttons[i])
      }
     } else {
        count = count + 1;
      }
  }

// "Controller" for CP picks.
function CPPicks(arr) {
  for (var i = 0; i < arr.length; i++) {
    var playerFound = findPlayer(arr[i]);
    addCPPicks(playerFound, (i+2));
    removeCPPicks(playerFound);
  }
};

// Returns row with the player info.

function findPlayer(id) {
  var queue = document.querySelector(".queve");
  var availablePlayersCount = queue.children[1].children.length;
  for (var i =0; i < availablePlayersCount; i++) {
    if (queue.children[1].children[i].querySelector("#rank").innerHTML == id) {
      return queue.children[1].children[i]
    };
  };
}

// ADD/REMOVE COMPUTER PICKS TO DRAFTBOARD/AVAILABLE

function addCPPicks(player, row) {
  var playerName = player.querySelector("#name").innerHTML;
  var table = document.querySelector("#mock-draft-table");
  var entry = table.rows[row].insertCell(-1);
  entry.innerHTML = playerName;
}

function removeCPPicks(player) {
  player.parentNode.removeChild(player);
}

// ADD YOUR PICKS TO DRAFTBOARD

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

