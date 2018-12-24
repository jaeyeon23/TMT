<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
</head>
<body>
<div>
	<div>
	<table width="600" border="0" cellspacing="0" cellpadding="2">
		<tr align="center" bgcolor="#F3F3F3">
			<td width="50"><strong>번호</strong></td>
			<td width="350"><strong>상품명</strong></td>
			<td width="70"><strong>가격</strong></td>
			<td width="80"><strong>내용</strong></td>
			<td width="50"><strong>국가</strong></td>
			<td width="50"><strong>지역</strong></td>
			<td width="50"><strong>조회수</strong></td>
			<td width="50"><strong>이1</strong></td>
			<td width="50"><strong>이2</strong></td>
			<td width="50"><strong>이3</strong></td>
			<td width="50"><strong>등록일</strong></td>
			<td width="50"><strong>평균 별점</strong></td>
		</tr>
		

		<s:iterator value="Tourlist" status="stat">
			<tr bgcolor="#FFFFFF" align="center">
				<td><s:property value="no" /></td>
				<td><s:property value="name" /></td>
				<td><s:property value="price" /></td>
				<td><s:property value="content" /></td>
				<td><s:property value="country" /></td>
				<td><s:property value="region" /></td>
				<td><s:property value="readcount" /></td>
				<td><s:property value="image1" /></td>
				<td><s:property value="image2" /></td>
				<td><s:property value="umage3" /></td>
				<td><s:property value="reg_date" /></td>
				<td><s:property value="grade" /></td>
			</tr>
		</s:iterator>
		<tr align="center">
		<td colspan="5"><s:property value="pagingHtml" escape="false"/></td>
	</tr>
		
	</table>
	</div>
	</div>
</body>
</html>