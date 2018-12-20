window.addEventListener("load", function(){
    var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
    var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; // 이메일이 적합한지 검사할 정규식
    var uid = document.querySelector('input[name="reg-uid"]');
    var pwd = document.querySelector('input[name="reg-pwd"]');
    var pwd_chk = document.querySelector('input[name="confirm-pwd"]');
    var email = document.querySelector('input[name="email"]');
    // $("#serMemtb").attr("placeholder", "Type a Location").val("").focus().blur();
 

    uid.onblur = function() {
        if (!re.test(uid.value)){
            $("#userid").attr("placeholder",'※4-12자의 영문 대소문자와 숫자로만 입력').val("").focus();
            return;
        }
    };
    pwd.onblur = function(){
        if (!re.test(pwd.value)){
        $("#reg-pwd").attr("placeholder",'※4-12자의 영문 대소문자와 숫자로만 입력').val("").focus();
        return;
    }
    };
    pwd_chk.onblur = function(){
        if (pwd.value != pwd_chk.value) 
        $("#confirm-pwd").attr("placeholder",'비밀번호가 동일하지 않습니다.').val("").focus();
        return;
    };
    email.onblur = function(){
        if (!re2.test(email.value)) 
        $("#email").attr("placeholder",'형식이 일치하지 않습니다.').val("").focus();
        return;
    };
    
});

document.getElementById('birth').valueAsDate = new Date();

var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; //January is 0!
var yyyy = today.getFullYear();
 if(dd<10){
        dd='0'+dd
    } 
    if(mm<10){
        mm='0'+mm
    } 

today = yyyy+'-'+mm+'-'+dd;
document.getElementById("birth").setAttribute("max", today);

$(function() {

    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});
