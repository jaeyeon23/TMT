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
	예약 내역 확인
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
			<button type="button" onclick="location.href='HotelSuccess.action?no=<s:property value="no"/>&roomnum=<s:property value="roomnum"/>'" class="btn btn-primary">예약완료</button>
		</td>
	</tr>
</table>

</body>
</html>