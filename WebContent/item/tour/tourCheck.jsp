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
	예약 정보  확인
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
		    <s:property value="%{country}"/>-<s:property value="%{region}"/> <br>
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
		<td colspan="2">
		    <button type="button" onclick="location.href='javascript:history.go(-1)'" class="btn btn-primary">취소</button>
			<form action="HotelSuccess.action">
			<s:hidden name="seq_no" value="%{no}" />  <!-- 상품번호  -->
			<s:hidden name="name" value="%{name}" />  <!-- 상품명 -->
			<s:hidden name="price" value="%{price}" />  <!-- 가격 -->
			<s:hidden name="country" value="%{country}" />  <!-- 국가 -->
			<s:hidden name="region" value="%{region}" />  <!-- 지역 -->
			<s:hidden name="id" value="%{session.session_id}" />  <!-- 아이디 -->
			<s:hidden name="type" value="0" />  <!-- 구분 -->
			<input type="submit" value= "예약하기">
		  </form>
		</td>
	</tr>
</table>

</body>
</html>