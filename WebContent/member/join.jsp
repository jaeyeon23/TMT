<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������ ����</title>
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
<h1 class="title">ȸ�������� �Ϸ�Ǿ����ϴ�.</h1>
	<form action="LoginForm.action" method="post">
	<table>
		<tr>
			<td class="title">TMT�� ȸ���� �ǽŰ� ȯ���մϴ�.&nbsp;&nbsp;<b>${id}</b>��</td>
		</tr>
		<tr>
		<td>&nbsp;</td>
		</tr>
		<tr>
		<td>&nbsp;</td>
		</tr>
		<tr>
			<td><a href="LoginForm.action" class="regButton">�α���&nbsp;&nbsp;</a>
			&nbsp;&nbsp;&nbsp;&nbsp;<a href="Main.action" class="regButton">&nbsp;&nbsp;&nbsp;&nbsp;Ȩ����</a></td>
			</td>
		</tr>
	</table>
	</form>
	</center>
</body>
</html>