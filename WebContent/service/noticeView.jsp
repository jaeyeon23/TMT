<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<script src="js/bootstrap.js" type="text/javascript"></script>
</head>
<body>
<table width="600" border="0" cellspacing="0" cellpadding="2" align="center">
		<tr>
			<td align="center"><h2>공지사항</h2></td>
		</tr>
		<tr>
			<td height="20"></td>
		</tr>
	</table>

	<table width="600" border="0" cellspacing="0" cellpadding="0" align="center">
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td bgcolor="#F4F4F4">번호</td>
			<td bgcolor="#FFFFFF">
				&nbsp;&nbsp;<s:property value="resultClass.notice_no"/>
			</td>
		</tr>
		
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td width="100" bgcolor="#F4F4F4">제목</td>
			<td width="500" bgcolor="#FFFFFF">
				&nbsp;&nbsp;<s:property value="resultClass.subject"/>
			</td>
		</tr>
		
		
		
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td bgcolor="#F4F4F4">내용</td>
			<td bgcolor="#FFFFFF">
				&nbsp;&nbsp;<s:property value="resultClass.content"/>
			</td>
		</tr>
		
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td bgcolor="#F4F4F4">조회수</td>
			<td bgcolor="#FFFFFF">
				&nbsp;&nbsp;<s:property value="resultClass.readcount"/>
			</td>
		</tr>
	
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td bgcolor="#F4F4F4">등록날짜</td>
			<td bgcolor="#FFFFFF">
				&nbsp;&nbsp;<s:property value="resultClass.reg_date"/>
			</td>
		</tr>
	
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>	
	</table>
</body>
</html>