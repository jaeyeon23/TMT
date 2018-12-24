<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function validation(userinput){
	if(userinput.id.value==""){
		alert("아이디를 입력해주세요.");
		return false;
	}
	else if(userinput.password.value==""){
		alert("비밀번호를 입력해주세요.");
		return false;
	}
	return true;
}
</script>
<style>
.title {
	font-wight: 300;
	font-size: 30px;
	text-align:center;
	text-valign:center;
}
.login{
    background-color: rgba(249, 214, 169, 1);
    border: none;
    padding: 5px 0;
    text-align: center;
    margin: 3px;
    cursor: pointer;
    border-radius:5px;
    height:40px;
    width:400px;
    font-size:20px;
}
.find {
	font-size:18px;
	color:#000000;
}
</style>
<meta charset="UTF-8">
<title>TMT로그인</title>
</head>
<body>
<center>
	<form name="login" method="post" action="Login.action">
		<table width="70%" border="0" cellspacing="0" cellpadding="10px" align="middle">
			<tr>
				<td height="100" colspan="80%" class="title">회원로그인</td>
			</tr>
			
			<tr>

				<td align="right">아이디</td>
				<td align="center"><input type="text" name="id" size="17" width="100%"></td>

			</tr>

			<tr>
				<td align="right">비밀번호</td>
				<td align="center"><input type="password" name="password" size="17" width="100%"></td>
			</tr>
			<tr>
				<td width="100%" align="center" colspan="80%">
					<input type="submit" value="로그인" class="login">
				</td>
				</tr>
			<tr>
				<td width="100%" align="center" colspan="80%">
					<a href="FindIdForm.action" class="find">아이디 찾기</a>
					&nbsp;l&nbsp;
					<a href="FindPwForm.action" class="find">비밀번호 찾기</a>
					&nbsp;&nbsp;
				</td>
			</tr>
			<tr align="center" height="100">
				<td width="30%"/>
				<td colspan="3" valign="middle">
				아직 TMT의 회원이 아니신가요? <a href="JoinForm.action">회원가입</a></td>
				<td width="30%"/>
			</tr>
		</table>
	</form>
</center>
</body>
</html>