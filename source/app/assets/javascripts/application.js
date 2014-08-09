document.addEventListener('DOMContentLoaded', function(){

  var table = document.querySelector("table");
  // tbody = document.querySelector("table").querySelector("tbody").children.length
  var tbody = document.querySelector("table").querySelector("tbody").children;
  var rounds = 12;
  var comp_players = 3;

  // console.log(tbody)
  for(var pl = 0; pl <= rounds; pl++){
    for(var num = 0; num < comp_players; num++){
      var x = table.rows[num+2].insertCell(-1);
      x.innerHTML="anth"
    }
      var x = table.rows[1].insertCell(-1);
      // <user input>
      x.innerHTML="you"
  }

  var buttons = document.querySelectorAll("button");

  for (var i = 0; i < buttons.length; i++) {
      buttons[i].addEventListener("click", appendToDraftBoard);
  };

});

function appendToDraftBoard(e){
  var playerID = e.target.id;
  var table = document.querySelector("table");
  // console.log(table)
  // var x = table.rows[3].insertCell(-1);
  // x.innerHTML="New cell";
}

