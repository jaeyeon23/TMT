<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4 align="center">
	예약되었습니다
</h4>
<table style="align:center; width:75%; text-align:center; margin:0 auto;" class="table table-striped">
	<tr>
		<th>
			상품번호
		</th>
		<td>
			<s:property value="result.no"/>
		</td>
	</tr>
	<tr>
		<th>
			출발지
		</th>
		<td>
			<s:property value="result.arv"/>
		</td>
	</tr>
	<tr>
		<th>
			도착지
		</th>
		<td>
			<s:property value="result.dep"/>
		</td>
	</tr>
	<tr>
		<th>
			가격
		</th>
		<td>
			<s:property value="result.price"/>
		</td>
	</tr>
	<tr>
		<th>
			내용
		</th>
		<td>
			<s:property value="result.content"/>
		</td>
	</tr>
	<tr>
		<th>
			예약된 좌석 수
		</th>
		<td>
			<s:property value="#parameters.seat"/>
		</td>
	</tr>
	<tr>
		<th>
			좌석 등급
		</th>
		<td>
			<s:if test="result.seat_grade == 1">
				비즈니스
			</s:if>
			<s:if test="result.seat_grade == 0">
				일반
			</s:if>
		</td>
	</tr>
	<tr>
		<th>
			출발일
		</th>
		<td>
			<s:date name="result.ad" format="yyyy년 MM월 dd일 HH:mm" />
		</td>
	</tr>
	<tr>
		<th>
			도착일
		</th>
		<td>
			<s:date name="result.dd" format="yyyy년 MM월 dd일 HH:mm" />
		</td>
	</tr>
	<tr>
		<th>
			항공사
		</th>
		<td>
			<s:property value="result.air_company"/>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<button type="button" onclick="location.href='Main.action'" class="btn btn-primary">메인으로</button>
		</td>
	</tr>
</table>

</body>
</html>