<%@ page contentType="text/html;charset=EUC-KR" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α��οϷ�</title>
</head>
<body>
<table width="740" cellspacing="0" cellpadding="0" border="0" align="center">
<tr>
<td>
<div align="center">
<font>${id}&nbsp;&nbsp;����</font>
</div>
</td>
</tr>
<tr>
<td>
<br>
 
<div align="center">
<font>ȯ���մϴ�.<br>
<a href="javascript:window.location='./Main.action'">�������� ����</a>
<s:if test='%{session.admin.equals(0)}'>
<a href="javascript:window.location='./AdminMain.action'">������ �������� ����</a>
</s:if>
</div>
</td>
</tr>
</table>
</body>
</html>