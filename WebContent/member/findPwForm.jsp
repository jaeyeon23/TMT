<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>비밀번호 찾기 폼</title>

<style type="text/css">
.button{
    background-color: #F6E3CE;
    border: none;
    color:#000000;
    padding: 10px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 10px;
    cursor: pointer;
    border-radius:5px;
    height:70px;
    font-size:20px;
}
.button:hover{
	background-color: #F5D0A9;
	text-decoration:none;color:#F3683D;
}
</style>

<script language="javascript">
	function check() {

		var frm = document.findPw;

		if (frm.id.value == "") {
			alert("아이디를 입력해주십시오.");
			frm.id.focus();
			return false;
		}
		if (frm.name.value == "") {
			alert("이름을 입력해주십시오.");
			frm.name.focus();
			return false;
		}
		if (frm.tel.value == "") {
			alert("핸드폰 번호를 입력해주십시오.");
			frm.tel.focus();
			return false;
		}
		if(frm.email.value==""){
			alert("이메일을 입력해주십시오.");
			frm.email.focus();
			return false;
		}
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

</head>

<center>
	<body>
		<h1>비밀번호 찾기</h1>
			<form name="findPw" action="FindPw.action" method="post" onsubmit="return check()">
				<table>
					<tr>
						<td>아이디&nbsp;<input type="text" name="id"> &nbsp;
						<a href="FindIdForm.action">ID가 기억이 안나시나요?</a>
						</td>
					<tr>
						<td>이름&nbsp;<input type="text" name="name" /></td>
					</tr>
					<tr>
						<td>전화번호&nbsp;<input type="text" name="tel" /></td>
					</tr>
					<tr>
						<td>이메일&nbsp;<input type="text" name="email" /></td>
					</tr>
				</table>
		<br>
		<br>
		<input type="submit" value="찾기" class="button" />&nbsp;
		<input type="button" value="취소" class="button" onclick="location.href='LoginForm.action'" />
		<br>
		<br>
		</form>
	</body>
</center>
</html>