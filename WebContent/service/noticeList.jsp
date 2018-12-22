<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	<br>
	<div>
		
		<div>
<table width="600" border="0" cellspacing="0" cellpadding="2" align="center">
	<tr align="center" bgcolor="#F3F3F3">
		<td width="50"><strong>번호</strong></td>
		<td width="350"><strong>제목</strong></td>
		<td width="80"><strong>날짜</strong></td>
		<td width="50"><strong>조회</strong></td>
	</tr>
	<tr bgcolor="#777777">
		<td height="1" colspan="5"></td>
	</tr>
	<s:iterator value="list" status="stat">
		<s:url id="viewURL" action="NoticeView"><!--  -->
			<s:param name="notice_no" value="notice_no"/><!--  -->
			<s:param name="currentPage" value="currentPage"/><!--  -->
		</s:url><!--  -->
		<tr bgcolor="#FFFFFF" align="center">
			<td><s:property value="notice_no"/></td>
			<td align="left">
				<s:a href="%{viewURL}"><s:property value="subject"/></s:a>
			</td>
			<td><s:property value="reg_date"/></td>
			<td><s:property value="readcount"/></td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="5"></td>
		</tr>
	</s:iterator>
	<s:if test="list.size() <= 0">
		<tr bgcolor="#FFFFFF" align="center">
			<td colspan="5">등록된 게시물이 없습니다</td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="5"></td>
		</tr>
	</s:if>
	<tr align="center">
		<td colspan="5"><s:property value="pagingHtml" escape="false"/></td>
	</tr>
	</table>
		</div>
	</div>

	

</body>
</html>