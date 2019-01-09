<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script src="../js/bootstrap.js"></script>
</head>
<body>

<div class="resp-container--row ">
	<div>
		<a href="AdminOrderList.action?c=t">투어</a> &nbsp;&nbsp; &nbsp;&nbsp;
		<a href="AdminOrderList.action?c=a">항공</a> &nbsp;&nbsp;  &nbsp;&nbsp;
		<a href="AdminOrderList.action?c=h">호텔</a>
	</div>
	<s:url id="itemView"/>
<table class="table" border="0" width="100%" cellpadding="0" cellspacing="0">
	<s:if test='%{c=="h"}'>
		<s:url id="itemView" action="AdminHotelView.action">
					<s:param name="no" value="no"/>
		</s:url>
		<tr>
			<th width="10%">회원정보</th>
			<th width="40%"></th>
			<th width="10%">상품정보</th>
			<th width="40%">호텔</th>
		</tr>
		<tr>
			<th>이름</th><td align="left"><s:property value="%{resultMember.name}"/></td>
			<th>상품명</th><td><s:property value="%{resultOrder.name}"/></td>
		</tr>
		<tr>
			<th>아이디</th><td align="left"><s:property value="%{resultMember.id}"/></td>
			<th>국가</th><td><s:property value="%{resultOrder.country}"/></td>
		</tr>
		<tr>
			<th>이메일</th><td align="left"><s:property value="%{resultMember.email}"/></td>
			<th>지역</th><td><s:property value="%{resultOrder.region}"/></td>
		</tr>
		<tr>
			<th>전화번호</th><td align="left"><s:property value="%{resultMember.tel}"/></td>
			<th>체크인</th><td><s:property value="%{resultOrder.checkin}"/></td>
		</tr>
		<tr>
			<th>여권번호</th><td align="left"><s:property value="%{resultMember.passport}"/></td>
			<th>체크아웃</th><td><s:property value="%{resultOrder.checkout}"/></td>
		</tr>
		<tr>
			<th></th><td></td>
			<th>인원수</th><td><s:property value="%{resultOrder.people}"/></td>
		</tr>
		<tr>
			<th></th><td></td>
			<th>가격</th><td><s:property value="%{resultOrder.price}"/></td>
		</tr>
		<tr>
			<th></th><td></td>
			<th>전화번호</th><td><s:property value="%{resultOrder.tel}"/></td>
		</tr>
		
	
	</s:if>
	
	<s:elseif test='%{c=="a"}'>
		<tr>
			<th width="10%">회원정보</th>
			<th width="40%"></th>
			<th width="10%">상품정보</th>
			<th width="40%">항공</th>
		</tr>
		<tr>
			<th>이름</th><td align="left"><s:property value="%{resultMember.name}"/></td>
			<th>출발지</th><td><s:property value="%{resultOrder.arv}"/></td>
		</tr>
		<tr>
			<th>아이디</th><td align="left"><s:property value="%{resultMember.id}"/></td>
			<th>도착지</th><td><s:property value="%{resultOrder.dep}"/></td>
		</tr>
		<tr>
			<th>이메일</th><td align="left"><s:property value="%{resultMember.email}"/></td>
			<th>좌석등급</th><td><s:property value="%{resultOrder.seat_grade}"/></td>
		</tr>
		<tr>
			<th>전화번호</th><td align="left"><s:property value="%{resultMember.tel}"/></td>
			<th>인원</th><td><s:property value="%{resultOrder.people}"/></td>
		</tr>
		<tr>
			<th>여권번호</th><td align="left"><s:property value="%{resultMember.passport}"/></td>
			<th>출발일</th><td><s:property value="%{resultOrder.ad}"/></td>
		</tr>
		<tr>
			<th></th><td></td>
			<th>도착일</th><td><s:property value="%{resultOrder.dd}"/></td>
		</tr>
		<tr>
			<th></th><td></td>
			<th>항공사</th><td><s:property value="%{resultOrder.air_company}"/></td>
		</tr>
		<tr>
			<th></th><td></td>
			<th>가격</th><td><s:property value="%{resultOrder.price}"/></td>
		</tr>
		
	</s:elseif>

	<s:else>
		<tr>
			<th width="10%">회원정보</th>
			<th width="40%"></th>
			<th width="10%">상품정보</th>
			<th width="40%">투어</th>
		</tr>
		<tr>
			<th>이름</th><td align="left"><s:property value="%{resultMember.name}"/></td>
			<th>상품명</th><td><s:property value="%{resultOrder.name}"/></td>
		</tr>
		<tr>
			<th>아이디</th><td align="left"><s:property value="%{resultMember.id}"/></td>
			<th>국가</th><td><s:property value="%{resultOrder.country}"/></td>
		</tr>
		<tr>
			<th>이메일</th><td align="left"><s:property value="%{resultMember.email}"/></td>
			<th>지역</th><td><s:property value="%{resultOrder.region}"/></td>
		</tr>
		<tr>
			<th>전화번호</th><td align="left"><s:property value="%{resultMember.tel}"/></td>
			<th>수량</th><td><s:property value="%{resultOrder.amount}"/></td>
		</tr>
		<tr>
			<th>여권번호</th><td align="left"><s:property value="%{resultMember.passport}"/></td>
			<th>가격</th><td><s:property value="%{resultOrder.price}"/></td>
		</tr>
		
	</s:else>
	<tr>
		<td colspan="4" align="center">
			<form action="AdminOrderDelete.action">
				<input type="button" value="회원정보" onclick="location.href='AdminMemberView.action?id=<s:property value="%{resultMember.id}"/>'">
				
				<s:a href="%{itemView}"/>
				
				<input type="submit" value="삭제">
				<input type="hidden" name="seq_no" value="<s:property value="seq_no"/>">
				<input type="hidden" name="currentPage" value="<s:property value="currentPage"/>">
				<input type="hidden" name="c" value="<s:property value="c"/>">
				
			</form>
		</td>
	</tr>
</table>
				





</div>
</body>
</html>