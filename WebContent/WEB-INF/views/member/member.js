window.addEventListener("load", function () {
    var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
    var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; // 이메일이 적합한지 검사할 정규식
    var txtUid = document.querySelector('input[name="uid"]');
    var pw = document.getElementById("pw");
    var pw_chk = document.getElementById("pw_chk");
    var email = document.getElementById("email");
    var name = document.getElementById("name");
    var nicname = document.getElementById("nic-name");
    var btnDuplCheck = document.querySelector("#btn-chk");
    var btnReg = document.getElementById("btn-chk")
    var status = document.querySelector(".status");
    var statusId = document.querySelector(".statusId");
    var checkedId = false;

    txtUid.onblur = function () {
        if (!re.test(txtUid.value)) {
            txtUid.setCustomValidity("※4-12자의 영문 대소문자와 숫자로만 입력");
            return txtUid.focus();
        }else {
            return pw.focus();
        }
    };
    pw.onblur = function(){
        if (!re.test(pw.value)) {
            pw.setCustomValidity("※4-12자의 영문 대소문자와 숫자로만 입력");
            return pw.focus();
        }else{
            return pw_chk.focus();
        }
    };
    pw_chk.onblur = function() {
       if(pw.value != pw_chk.value){
            pw_chk.setCustomValidity("비밀번호가 동일하지 않습니다.");
            return pw_chk.focus();
        }else {
            return name.focus();
        }

    };
       
    name.onblur = function() {
        if (name.value != ""){
            name.setCustomValidity("필수입력란 입니다.");
            return name.focus();
        }else{
            return nicname.focus();
        }
    };
    nicname.onblur = function() {
        if (nicname.value != ""){
            nicname.setCustomValidity("필수입력란 입니다.");
            return nicname.focus();
        }else{
            return email.focus();
        }
    };

    email.onblur = function() {
        if(!re2.test(email.value)){
            email.setCustomValidity("형식에 맞지 않습니다.");
        }else{
            return false;
        }

    };

    btnDuplCheck.onclick = function (e) {
        console.log("checkedId :" + checkedId);


        var uid = txtUid.value;
        if (uid.checkValidity())//if(uid == ''){	
            uid.setCustomValidity("아이디가 입력되지 않았습니다.");
        else if (!checkedId)
            uid.setCustomValidity("아이디 중복검사를 체크하세요");
        
    };



    btnReg.onclick = function (e) {
        var uid = txtUid.value;


        if (uid == '') {
            txtUid.setCustomValidity("아이디가 입력되지 않았습니다.");
            return;
        }
        var request = new XMLHttpRequest();
        request.onload = function () {
            // if(request.readyState < 4)
            // 	return;
            console.log("readyState:" + request.readyState);
            console.log("response:" + request.responseText);
            // alert(request.responseText);
            // //true, false
            // checkedId = !JSON.parse(request.responseText);

        };
        request.open("POST", "../member/authen", true);
        //		request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("id=" + uid); //"id=newlec&pwd=111"

    };

    // function docheckbox(chk) {
    //     var obj = document.getElementsByName("food");
    //     for (var i = 0; i < obj.length; i++) {
    //         if (obj[i] != chk) {
    //             obj[i].checked = false;
    //         }
    //     };
    // }
    document.getElementById('birth').valueAsDate = new Date();


});