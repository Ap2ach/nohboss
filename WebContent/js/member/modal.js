  // Get the modal
  var modal = document.getElementById('myModal');
 
  // Get the button that opens the modal
//   var btn = document.getElementById("login-btn");
  var btn = document.querySelector('.login-btn');
  // Get the <span> element that closes the modal
  var span = document.getElementsByClassName("close")[0];                                          
  var reg = document.getElementsByClassName("active");
  // When the user clicks on the button, open the modal 
  btn.onclick = function() {
      modal.style.display = "block";
      modal.style.display = "flex";
  }

  // When the user clicks on <span> (x), close the modal
  span.onclick = function() {

      modal.style.display = "none";
  }

  reg.onclick = function(){
    modal.style.display = "none";
  }
  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }
  function inputIdChk(){
    document.userInfo.idDuplication.value ="idUncheck";
}

  function goFirstForm() {
      location.href="/hokmap/list";
  }    


