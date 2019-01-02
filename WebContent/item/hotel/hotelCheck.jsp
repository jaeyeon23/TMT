<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<h4 align="center">
	예약 정보 확인
</h4>
<table style="align:center; width:75%; text-align:center; margin:0 auto;" class="table table-striped">
	<tr>
		<th>
			상품번호
		</th>
		<td>
			<s:property value="no"/>
		</td>
	</tr>
	<tr>
		<th>
			상품명
		</th>
		<td>
			<s:property value="%{name}"/> 
		</td>
	</tr>
	<tr>
		<th>
			가격
		</th>
		<td>
			<s:property value="%{price}"/>
		</td>
	</tr>
	<tr>
		<th>
			체크인
		</th>
		<td>
			<s:property value="inDay"/>
		</td>
	</tr>
	<tr>
		<th>
			체크아웃
		</th>
		<td>
			<s:property value="outDay"/>
		</td>
	</tr>
	<tr>
		<th>
			인원
		</th>
		<td>
			<s:property value="number"/>
		</td>
	</tr>
	<tr>
		<th>
			예약된 객실 수
		</th>
		<td>
			<s:property value="roomnum"/>
		</td>
	</tr>
	<tr>
		<td colspan="2">
		    <button type="button" onclick="location.href='javascript:history.go(-1)'" class="btn btn-primary">취소</button>
			<form action="HotelSuccess.action">
			<s:hidden name="no" value="%{no}" />  <!-- 상품번호  -->
			<s:hidden name="name" value="%{name}" />  <!-- 상품명 -->
			<s:hidden name="price" value="%{price}" />  <!-- 가격 -->
			<s:hidden name="content" value="%{content}" />  <!-- 국가 -->
			<s:hidden name="country" value="%{country}" />  <!-- 국가 -->
			<s:hidden name="region" value="%{region}" />  <!-- 지역 -->
			<s:hidden name="image1" value="%{image1}" />
			<s:hidden name="tel" value="%{tel}" />
			<s:hidden name="checkin" value="%{inDay}" />  <!-- 체크인 -->
			<s:hidden name="checkout" value="%{outDay}" />  <!-- 체크아웃 -->
			<s:hidden name="maxnum" value="%{number}" />
			<s:hidden name="room" value="%{roomnum}" />
			<s:hidden name="id" value="%{session.session_id}" />  <!-- 아이디 -->
			<input type="submit" value= "예약완료">
		 </form>
		</td>
	</tr>
</table>

</body>
</html>