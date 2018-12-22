<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<script src="js/bootstrap.js" type="text/javascript"></script>
</head>
<body>
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
		
		<tr>
			<td align="right" colspan="2">
				<input name="list" type="button" value="수정" class="inputb"
				onclick="javascript:location.href='AdminNoticeModify.action?currentPage=<s:property value="currentPage"/>&notice_no=<s:property value="resultClass.notice_no"/>'">
				<input name="list" type="button" value="삭제" class="inputb"
				onclick="javascript:location.href='AdminNoticeDelete.action?currentPage=<s:property value="currentPage"/>&notice_no=<s:property value="resultClass.notice_no"/>'">
				<input name="list" type="button" value="목록" class="inputb"
				onclick="javascript:location.href='AdminNoticeList.action?currentPage=<s:property value="currentPage"/>'">
			</td>
		</tr>
	</table>
</body>
</html>