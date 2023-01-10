<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript">
		function checkIdPw() {
			if(document.LoginForm.id.value.length == 0) {
				alert('아이디 필수 입력값입니다.');
				return false;
				}
			
			if(document.LoginForm.id.value.length <= 4) {
				alert('아이디는 5자 이상이여야 합니다.');
				return false;
				}
			if(document.LoginForm.pw.value.length == 0) {
				alert('비밀번호는 필수 입력값입니다.');
				return false;
				}
			if(document.LoginForm.pw.value.length <= 4) {
				alert('비밀번호는 5자 이상이여야 합니다.');
				return false;
				}
			if(isNaN(document.LoginForm.pw.value)) {
				alert('비밀번호는 숫자만 입력 가능합니다.');
				return false;
				}
			
			/*
			for(var i=0;i<document.LoginForm.id.value.length;i++) {
					var firstChar = document.LoginForm.id.value.charAt(i);
			
				if(firstChar < 'A' || firstChar > 'Z'){
					alert('아이디의 모든 글자는 대문자만 가능합니다.');
					return false;
					}
				
			} */
			var memberId = document.LoginForm.id.value;
			console.log(memberId);
			
			var charCheck = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; //아이디에 문자를 제외한 값이 들어오면 false
			
			if(!charCheck.test(memberId)) {
				alert('아이디의 첫글자는 한글 또는 영문만 가능합니다.')
				return false;
			}
			var memberPw = document.loginForm.pw.value;
			var numCheck = /^[0-9]*$/; //숫자나 공백
			
			if(!numCheck.test(memberPw)) {
				alert('비밀번호는 숫자만 가능합니다.')
				return false;
			}
		
		}





</script>
</head>
<body>
	<form action="result.jsp" name = "LoginForm" onsubmit="return checkIdPw()">
	아이디 : <input type = "text" name = "id"><br><br>
	비밀번호 : <input type = "password" name = "pw"><br><br>
	<input type="submit" value ="제출하기">
	</form>

</body>
</html>