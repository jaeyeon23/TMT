<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function validation(userinput){
	if(userinput.memberid.value==""){
		alert("���̵� �Է����ּ���.");
		return false;
	}
	else if(userinput.memberpassword.value==""){
		alert("��й�ȣ�� �Է����ּ���.");
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
<meta charset="EUC-KR">
<title>TMT�α���</title>
</head>
<body>
<center>
	<form method="post" action="Login.action">
		<table width="70%" border="0" cellspacing="0" cellpadding="10px" align="middle">
			<tr>
				<td height="100" colspan="80%" class="title">ȸ���α���</td>
			</tr>
			
			<tr>

				<td align="right">���̵�</td>
				<td align="center"><input type="text" name="id" size="17" width="100%"></td>

			</tr>

			<tr>
				<td align="right">��й�ȣ</td>
				<td align="center"><input type="password" name="password" size="17" width="100%"></td>
			</tr>
			<tr>
				<td width="100%" align="center" colspan="80%">
					<input type="submit" value="�α���" class="login">
				</td>
				</tr>
			<tr>
				<td width="100%" align="center" colspan="80%">
					<a href="FindIdForm.action" class="find">���̵� ã��</a>
					&nbsp;l&nbsp;
					<a href="FindPwForm.action" class="find">��й�ȣ ã��</a>
					&nbsp;&nbsp;
				</td>
			</tr>
			<tr align="center" height="100">
				<td width="30%"/>
				<td colspan="3" valign="middle">
				���� TMT�� ȸ���� �ƴϽŰ���? <a href="JoinForm.action">ȸ������</a></td>
				<td width="30%"/>
			</tr>
		</table>
	</form>
</center>
</body>
</html>