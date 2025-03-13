function findAddress() {
    new daum.Postcode({
        oncomplete: function(data) {
           let roadAddress = data.roadAddress; // 도로명 주소
		   let jibunAddress = data.jibunAddress; // 지번 주소
		   let extraAddress = '';				// 동이나 빌딩명을 넣을 변수

		   document.getElementById("postcode").value = data.zonecode; 	// 우편번호

		   if(data.userSelectedType == 'R') {	// 사용자가 도로명주소를 선택함
				if(data.bname != '') {
					extraAddress += data.bname;		// 동이름 넣기
				}
				if(data.buildingName != '') {
					extraAddress += ', ' + data.buildingName;	// 빌딩명 넣기
				}
				roadAddress += extraAddress != '' ? '(' + extraAddress + ')' : '';
				document.getElementById("addr").value = roadAddress;
		   } else {		// 사용자가 지번을 선택함
				if(data.buildingName != '') {
					extraAddress += ', ' + data.buildingName;	// 빌딩명 넣기
				}
				jibunAddress += extraAddress != '' ? '(' + extraAddress + ')' : '';
				document.getElementById("addr").value = jibunAddress;
		   }
		   document.getElementById('detailAddress').focus();
        }
    }).open();
}

function inputIdChk() {
	frm.idBtnCheck.value = "idUncheck";
}

function idCheck(id) {
	frm.idBtnCheck.value = "idCheck";
	if(id == "") {
		alert("아이디를 입력하세요");
		frm.id.focus();
		return;
	}
	url = "idCheck.jsp?id="+id;
	window.open(url, "IDCheck", "width=300, height=150");
}

function inputCheck() {
	if(frm.idBtnCheck.value != "idCheck") {
		alert("아이디 중복 체크를 해주세요");
		return;
	}
	if(frm.pwd.value == "") {
		alert("비밀번호를 입력하세요");
		frm.pwd.focus();
		return;
	}
	if(frm.pwd.value != frm.rePwd.value) {
		alert("비밀번호가 다릅니다");
		frm.rePwd.focus();
		return;
	}
	if(frm.name.value == "") {
		alert("이름을 입력하세요");
		frm.name.focus();
		return;
	}
	frm.submit();
}
