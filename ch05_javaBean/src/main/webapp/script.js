function inputCheck() {
	let pwd = document.getElementsById("pwd").value;
	let rePwd = document.getElementsById("rePwd").value;
	
	console.log(pwd);
	
	if(pwd != rePwd) {
		alert("비밀번호가 일치하지 않습니다");
		return false;
	} else {
		document.getElementById("register").submit();
	}
	
}