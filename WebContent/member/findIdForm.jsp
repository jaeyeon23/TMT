<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>IDã��</title>
<style>

.title{
	font-size:30px;
}
.factors{
	font-size:20px;
}

.result{
	font-size:20px;
}
/* ���̵� ã�� ��ư */
.button{
    background-color: #F6E3CE;
    border: none;
    color:#000000;
    padding: 4px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 2px;
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

</head>
<body>

	<form action="FindId.action">
		<br>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td align="center" height="300">
					<table border="0">
						<tr>
							<td colspan="100%" align="center" class="title">���̵� ã��</td>
						</tr>
						<tr>
							<td height="30"/>
						</tr>
						
						<tr>
							<td height="5" colspan="2"></td>
						</tr>
						<tr>
							<td width="110" class="factors">�̸�&nbsp;<br/><br/>�̸���&nbsp;
							</td>
							<td><input type="text" name="name"><br><br/>
							<input type="text" name="email"></td>
						</tr>
						<tr>
							<td height="10" colspan="2"></td>
						</tr>
						<tr>
							<td align="center">
							<input type="submit" value="  ���̵� ã��  " class="button">
							</td>
							<s:if test='%{resultClass.id != null}'>
								<td class="result">RESULT&nbsp;:&nbsp;</td>
								<td align="left" class="result"><br> <b>${resultClass.name}</b>
									���� ID�� <b>${resultClass.id}</b>�Դϴ�.<br>&nbsp;</td>
								<td align="middle">
									<a href="LoginForm.action" class="button">&nbsp;&nbsp;�α���������&nbsp;&nbsp;</a>
								</td>
							</s:if>
							<s:else>
								<td></td>
								<td></td>
								<td align="middle">
									<a href="LoginForm.action" class="button">&nbsp;&nbsp;�α���������&nbsp;&nbsp;</a>
								</td>
							</s:else>
						</tr>
						<tr>
							<td height="5" colspan="2"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
