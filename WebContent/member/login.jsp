<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인완료</title>
</head>
<body>
<table width="740" cellspacing="0" cellpadding="0" border="0" align="center">
<tr>
<td>
<div align="center">
<font>${id}&nbsp;&nbsp;고객님</font>
</div>
</td>
</tr>
<tr>
<td>
<br>
 
<div align="center">
<font>환영합니다.<br>
<a href="javascript:window.location='./Main.action'">메인으로 가기</a>
<s:if test='%{session.admin.equals(0)}'>
<a href="javascript:window.location='./AdminMain.action'">관리자 페이지로 가기</a>
</s:if>
</div>
</td>
</tr>
</table>
</body>
</html>