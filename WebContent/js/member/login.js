function login() {

  var uid = document.querySelector("input[name='username']");
  var pwd = document.querySelector("input[name='password']");
  var modal = document.getElementById('myModal');

  var request = new XMLHttpRequest();
  
  request.open("POST","/member/login",true);
  request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); 
  request.onload=function(){
    var data = JSON.parse(request.responseText);
//    alert(data.id+"/"+data.pwd);
    if(data.id != uid.value){
    	alert("유효하지 않은 아이디입니다.");
    }else if(data.pwd != pwd.value){
      alert('비밀번호가 유효하지 않습니다.');
    }else{
      alert('로그인 성공');
      modal.style.display = "none";
    }

  }
  
	request.send("id="+uid.value+"&pwd="+pwd.value);

  }
  


