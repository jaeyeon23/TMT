<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/TMT/item/tour/checkcss.css" type="text/css">
<style>
/* #tops{
   background-color: red;
}
.top_1 hr{
   width:700px;
}
.top_1 li{ 
   float:left;
   outline: none;
} */
</style>
</head>
<body>
    <div id="alls">
        <div id="tops">
        </div>
        <div id="contents">
			<div id="coutents_left">
			   1.오늘은 돈내실 필요 없습니다. 요금은 현장에서 결제하세요.
			</div>
			<div id="coutents_right">
			   1. 호텔정보
			   2. 수량에 따른 메시지
			       서두르세요 수량이 얼마남지 않았습니다.
			3. 총 요금 
			</div>
		</div>
    </div>
	<%--<div>
		<div id="tops">
			<ul class="top_1">
				<li>[이미지들어갈자리]예약 정보</li>
				<li><hr></li>
				<li>[이미지들어갈자리]예약 완료</li>
			</ul>
		</div>
		<div>
		오늘은 돈내실 필요 없습니다. 요금은 현장에서 결제하세요.
		</div>

	</div>
	<br>
<br>
----------------------------------------------- 
<h4 align="center">
	예약 정보  확인
</h4>
<table style="align:center; width:75%; text-align:center; margin:0 auto;" class="table table-striped">
	<tr>
		<th>
			상품명
		</th>
		<td>
		    <s:property value="%{country}"/>-<s:property value="%{region}"/> <br>
			<s:property value="%{name}"/> 
		</td>
	</tr>
	<tr>
		<th>
			가격
		</th>
		<td>
			<s:property value="%{price*amount}"/>
		</td>
	</tr>	
	<tr>
		<th>
			수량
		</th>
		<td>
			<s:property value="%{amount}"/>
		</td>
	</tr>
	<tr>
		<td colspan="2">
		    <button type="button" onclick="location.href='javascript:history.go(-1)'" class="btn btn-primary">취소</button>
			<form action="TourSuccess.action">
			<s:hidden name="no" value="%{no}" />  <!-- 상품번호  -->
			<s:hidden name="name" value="%{name}" />  <!-- 상품명 -->
			<s:hidden name="price" value="%{price}" />  <!-- 가격 -->
			<s:hidden name="content" value="%{content}" />  <!-- 국가 -->
			<s:hidden name="country" value="%{country}" />  <!-- 국가 -->
			<s:hidden name="region" value="%{region}" />  <!-- 지역 -->
			<s:hidden name="image1" value="%{image1}" />  <!-- 이미지 -->
			<s:hidden name="amount" value="%{amount}" />  <!-- 수량 -->
			<s:hidden name="id" value="%{session.session_id}" />  <!-- 아이디 -->
			<input type="submit" value= "예약하기">
		  </form>
		</td>
	</tr>
</table> --%>

</body>
</html>