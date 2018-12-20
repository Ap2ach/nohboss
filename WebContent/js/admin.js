/**
 * 
 */
/*
 window.addEventListener("load",function(){

 var userlist = document.querySelector(".user-list-container");
 var nameinput = userlist.querySelector("input[type='search']");
 var user = userlist.querySelector(".user");

 var list = null;
 alert(user.innerHTML);
 nameinput.oninput = function(e){
 e.innerText = 
 user.innerHTML = "";

 for(var i = 0; i < user.length; i++){
 user.innerHTML += '<i class="fa fa-user" \
 aria-hidden="true">'+ list.name +'</i>'


 }
 e.preventDafult();
 };


 var fetchuserlist = function(){

 var request = new XMLHttpRequest();
 request.open("POST", "../member;", true);
 request.onload = function(e){

 list = JSON.parse(request.responseText);
 };

 request.send();
 }
 fetchuserlist();
 });*/
/*    $(function(){
 $("input[type='search']").keyup(function(){
 $.ajax({
 url:"/member",
 data:{ keyword : $(this).val()},
 method:"POST"})
 .done(function(result){
 $(".user-search").html(result);

 })
 })
 });*/

/*$('.user-search input').keyup(function(){
 $.ajax({
 url:'/member',
 type : 'POST',
 data : ('form').serialize(),
 success:function(data){
 var str = '';
 for(var name in data){
 str +='<i class="fa fa-user" \
 aria-hidden="true">'+ list[i] +'</i>'
 }
 $('.user').html(str);
 }
 })
 })*/
/*window
		.addEventListener(
				"load",
				function() {
					innerHTML();
					var sinput = document.querySelector("input[type='search']");
					var usersearch = document.querySelector(".user-list");
					var user = usersearch.querySelector(".user");

					var list = null;

					var listbind = function() {
						fileList.innerHTML = "";
						for (var i = 0; i < list.length; i++) {
							user.innerHTML += '<li class="user">\
             <i class="fa fa-user" aria-hidden="true"></i>\
             '
									+ list[i].name + '</li>';
						}
					}

					var fetchuserlist = function() {
						var request = new XMLHttpRequest();
						request.open("POST", "../member;", true);

						request.onkeyup = function() {
							list = JSON.parse(request.responseText);
							listbind();
						};
						request.send();
					}

					fetchuserlist();
				});*/

window.addEventListener("load", function() {
	var userList = document.querySelector(".user-list");
	userList.onclick = function(e){
		var dataId = e.target.dataset.id;
		if(e.target.nodeName != "LI"){
			return;
		}else{
			var request = new XMLHttpRequest();

			request.open("POST", "/admin?id=", true);
			request.onload = function(){
				console.log(dataId);
				console.log(e.target.dataset.id);
				console.log("hello");


			};

			request.send();

		}

	};
});
/*$(".user").on("click", function() {
	var request = new XMLHttpRequest();
	request.open("POST", "../admin", true);
	request.onload = function(event){
    if(event.target.classList.contains("hidden")){
        console.log("dd");
    }
    };
})
 */
window.addEventListener("load", function(){

	var usermanagement = document.querySelector(".user-management");
	var pluswarn = usermanagement.querySelector(".plus");
	var minuswarn = usermanagement.querySelector(".minus");
	var warninfor = document.querySelector(".warncnt");
	pluswarn.onclick = function(){
		var dataforwarn = pluswarn.dataset.id;
		/*			alert(dataforwarn);*/
		var request =  new XMLHttpRequest();	
		request.open("POST","/admin",true);
		request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		request.onload = function(){
			var resptxt = JSON.parse(request.responseText);
			warninfor.innerText = "경고:"+resptxt.warn;
			/*				alert(resptxt.warn);
				alert(pluswarn.dataset.id);*/
		};
		request.send("wp="+dataforwarn);

	};
	minuswarn.onclick = function(){
		var dataforwarn = minuswarn.dataset.id;
		/*			alert(dataforwarn);*/
		var request =  new XMLHttpRequest();	
		request.open("POST","/admin",true);
		request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		request.onload = function(e){
			var resptxt = JSON.parse(request.responseText);
			warninfor.innerText = "경고:"+resptxt.warn;
			if(resptxt.warn<0){
				alert("더 이상 감면할 수 없습니다.");
				
			}
			
			//alert(pluswarn.dataset.id);*/
		}
		request.send("wm="+dataforwarn);
	};


});