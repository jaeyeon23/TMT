<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 성공</title>
<style>
	.title{
	FONT-SIZE: 20pt;
	}
	.regButton{
    background-color:rgba(249, 214, 169, 1);
    border: none;
    color:#000000;
    padding: 5px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 3px;
    cursor: pointer;
    border-radius:5px;
    width:100;
    font-size:20px;
	}	
	.regButton:hover{
	background-color: #F5D0A9;
	}
</style>
</head>
<body>
<center>
<h1 class="title">회원가입이 완료되었습니다.</h1>
	<form action="LoginForm.action" method="post">
	<table>
		<tr>
			<td class="title">TMT의 회원이 되신걸 환영합니다.&nbsp;&nbsp;<b>${id}</b>님</td>
		</tr>
		<tr>
		<td>&nbsp;</td>
		</tr>
		<tr>
		<td>&nbsp;</td>
		</tr>
		<tr>
			<td><a href="LoginForm.action" class="regButton">로그인&nbsp;&nbsp;</a>
			&nbsp;&nbsp;&nbsp;&nbsp;<a href="Main.action" class="regButton">&nbsp;&nbsp;&nbsp;&nbsp;홈으로</a></td>
			</td>
		</tr>
	</table>
	</form>
	</center>
</body>
</html>