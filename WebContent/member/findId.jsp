<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>아이디 찾기 성공</title>

<style type="text/css">
.my-box {
	border: 1px solid;
	padding: 10px;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

</head>

<center>
	<body>
		<h3>아이디 찾기</h3>
		<br>고객님의 정보와 일치하는 아이디입니다.
		<br>
		<br><br>
		<div class="my-box">
			<form action="LoginForm.action" method="post">
				<table>
				<s:iterator value="%{list}" status="stat">
					<tr> 
						<td>ID : <s:property value="list.get(#stat.index).id"/>
							&nbsp;</td>
					</tr>
				</s:iterator>
				</table>
		</div><br><br>
				<input type="submit" value="Login" /> &nbsp; <input
							type="button" value="비밀번호 찾기" onclick="javascript:location.href='FindPwForm.action'"/>
		</form>
		
	</body>
</center>
</html>