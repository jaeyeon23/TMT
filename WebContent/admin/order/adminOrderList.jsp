<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link rel="stylesheet" media="screen" href="css/admin/view1.css">
<link rel="stylesheet" media="all" href="css/admin/view2.css">
<link rel="stylesheet" media="screen" href="css/admin/view3.css">
<link rel="stylesheet" href="service/notice.css" type="text/css">

<script src="../js/bootstrap.js" type="text/javascript"></script>
</head>
<body>
<div class="resp-container--row ">
	<div>
		<a href="AdminOrderList.action?c=t">투어</a> &nbsp;&nbsp; &nbsp;&nbsp;
		<a href="AdminOrderList.action?c=a">항공</a> &nbsp;&nbsp;  &nbsp;&nbsp;
		<a href="AdminOrderList.action?c=h">호텔</a>
	</div>
<s:if test='%{cc=="h"}'>
	<h2>호텔</h2>
	
	<table class="table" border="0" width="100%" cellpadding="0" cellspacing="0">
	    <tr height=26>
		
			<th width="5%"><font size="2">번호</font></th>
			<th width="10%"><font size="2">사진</font></th>
			<th width="7%"><font size="2">아이디</font></th>
			<th width="15%"><font size="2">상품명</font></th>
			
			<th width="7%"><font size="2">전화번호</font></th>
			<th width="9%"><font size="2">체크인</font></th>
			<th width="9%"><font size="2">체크아웃</font></th>
			<th width="5%"><font size="2">인원</font></th>
			<th width="5%"><font size="2">잔여객실</font></th>
			<th width="7%"><font size="2">가격</font></th>
			<th width="7%"><font size="2">상세보기</font></th>
		</tr>
		<s:iterator value="list" status="stat">
		<tr bgcolor="#FFFFFF" >
			<td><s:property value="no"/></td>
			<td><img src="/TMT/upload/hotel/<s:property value="image1"/>"></td>
			<td><s:property value="id"/></td>
			<td align="left"><s:property value="name"/></td>
			<td><s:property value="tel"/></td>
			<td><s:property value="checkin"/></td>
			<td><s:property value="checkout"/></td>
			<td align="center"><s:property value="people"/></td>
			<td align="center"><s:property value="room"/></td>
			<td><s:property value="price"/></td>
			<td>
				<form action="AdminOrderView.action">
					<input type="hidden" name="no" value="<s:property value="no"/>">
					<input type="hidden" name="id" value="<s:property value="id"/>">
					<input type="hidden" name="c" value="<s:property value="c"/>">
					<input type="hidden" name="currentPage" value="<s:property value="currentPage"/>">
					<input type="hidden" name="reg_date" value="<s:property value="reg_date"/>">
					<input type="submit" value="상세보기">
				</form>
			</td>
		</tr>
		</s:iterator>
	</table>
</s:if>
<s:elseif test='%{cc=="a"}'>
<h2>항공</h2>
	<table class="table" border="0" width="100%" cellpadding="0" cellspacing="0">
	    <tr height=26>
		
		<th width="5%"><font size="2">번호</font></th>
			<th width="10%"><font size="2">사진</font></th>
			<th width="7%"><font size="2">아이디</font></th>
			<th width="5%"><font size="2">인원</font></th>
			<th width="5%"><font size="2">도착지</font></th>
			<th width="5%"><font size="2">출발지</font></th>
			<th width="5%"><font size="2">도착일</font></th>
			<th width="5%"><font size="2">출발일</font></th>
			<th width="7%"><font size="2">가격</font></th>
			<th width="7%"><font size="2">상세보기</font></th>
		</tr>
		<s:iterator value="list" status="stat">
		<tr bgcolor="#FFFFFF" >
			<td><s:property value="no"/></td>
			<td><img width="30px" src="/TMT/upload/air/<s:property value="image1"/>"></td>
			<td><s:property value="id"/></td>
			<td align="center"><s:property value="people"/></td>
			<td align="center"><s:property value="dep"/></td>
			<td align="center"><s:property value="arv"/></td>
			<td align="center"><s:property value="ad"/></td>
			<td align="center"><s:property value="dd"/></td>
			<td><s:property value="price"/></td>
			<td>
				<form action="AdminOrderView.action">
					<input type="hidden" name="no" value="<s:property value="no"/>">
					<input type="hidden" name="c" value="<s:property value="c"/>">
					<input type="hidden" name="id" value="<s:property value="id"/>">
					<input type="hidden" name="currentPage" value="<s:property value="currentPage"/>">
					<input type="hidden" name="reg_date" value="<s:property value="reg_date"/>">
					<input type="submit" value="상세보기">
				</form>
			</td>
		</tr>
		</s:iterator>
	</table>
</s:elseif>
<s:else>
<h2>투어</h2>
	<table class="table" border="0" width="100%" cellpadding="0" cellspacing="0">
	    <tr height=26>
			<th width="5%"><font size="2">번호</font></th>
			<th width="10%"><font size="2">사진</font></th>
			<th width="7%"><font size="2">아이디</font></th>
			<th width="20%"><font size="2">상품명</font></th>
			<th width="7%"><font size="2">가격</font></th>
			<th width="7%"><font size="2">상세보기</font></th>
		</tr>
		<s:iterator value="list" status="stat">
		<tr bgcolor="#FFFFFF" >
			<td><s:property value="no"/></td>
			<td><img src="/TMT/upload/tour/<s:property value="image1"/>"></td>
			<td><s:property value="id"/></td>
			<td align="left"><s:property value="name"/></td>
			<td><s:property value="price"/></td>
			<td>
				<form action="AdminOrderView.action">
					<input type="hidden" name="no" value="<s:property value="no"/>">
					<input type="hidden" name="c" value="<s:property value="c"/>">
					<input type="hidden" name="id" value="<s:property value="id"/>">
					<input type="hidden" name="currentPage" value="<s:property value="currentPage"/>">
					<input type="submit" value="상세보기">
				</form>
			</td>
		</tr>
		</s:iterator>
	</table>
</s:else>
	<div align="center"><s:property value="pagingHtml" escape="false"/></div>
	<div id="search" align="center">
		<form>
			<input type="text" name="search">
			<input type="submit" value="검색">
		</form>
	</div>	
</div>
</body>
</html>






