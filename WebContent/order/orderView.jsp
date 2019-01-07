<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역 상세보기</title>
<style>
#main{
	font-size: xx-large;
}

th {
	background-color: #D8D8D8;
	width: 250px;
	padding: 3% 5%;
	font-size: 12pt;
}

#min_s {
	width: 100%;
	float: left;
	margin-top: 3%;
	margin-bottom: 10%;
}

#min_s form {
	display: inline;
}

#min_s button {
	background-color: #EAEAEA;
	padding: 8px 20px;
	border: 1px solid #EAEAEA;
	color: #5D5D5D;
	text-align: center;
	border-radius: 5px 5px 5px 5px;
	width: 150px;
	height: 47px;
}

#min_s button:hover {
	background-color: #D5D5D5;
}

#min_s input[type="submit"] {
	background-color: #1b5ac2;
	padding: 8px 20px;
	border: 1px solid #1b5ac2;
	color: white;
	text-align: center;
	border-radius: 5px 5px 5px 5px;
	width: 150px;
	height: 47px;
}

#min_s input[type="submit"]:hover {
	background-color: #323ab0;
}
</style>
</head>
<body>
	<s:if test="type == 0">
		<p align="center" id="main">HOTEL</p>
		<div style="width: 50%; margin: 0 auto;">
			<table class="table">
				<tr>
					<th>상품명</th>
					<td><s:property value="%{oh.name}" /></td>
				</tr>
				<tr>
					<th>가격</th>
					<td><s:property value="%{oh.price}" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><s:property value="%{oh.content}" /></td>
				</tr>
				<tr>
					<th>국가</th>
					<td><s:property value="%{oh.country}" /></td>
				</tr>
				<tr>
					<th>지역</th>
					<td><s:property value="%{oh.region}" /></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><s:property value="%{oh.tel}" /></td>
				</tr>
				<tr>
					<th>체크인</th>
					<td>
						<s:property value="%{oh.checkin}"/>
					</td>
				</tr>
				<tr>
					<th>체크아웃</th>
					<td>
						<s:property value="%{oh.checkout}"/>
					</td>
				</tr>
				<tr>
					<th>인원수</th>
					<td><s:property value="%{oh.people}" /></td>
				</tr>
				<tr>
					<th>방 개수</th>
					<td><s:property value="%{oh.room}" /></td>
				</tr>

			</table>
		</div>
	</s:if>

	<s:elseif test="type == 1">
		<p align="center" id="main">TOUR</p>
		<div style="width: 50%; margin: 0 auto;">
			<table class="table">
				<tr>
					<th>상품명</th>
					<td><s:property value="%{ot.name}" /></td>
				</tr>
				<tr>
					<th>가격</th>
					<td><s:property value="%{ot.price}" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><s:property value="%{ot.content}" /></td>
				</tr>
				<tr>
					<th>국가</th>
					<td><s:property value="%{ot.country}" /></td>
				</tr>
				<tr>
					<th>지역</th>
					<td><s:property value="%{ot.region}" /></td>
				</tr>
				<tr>
					<th>상품 개수</th>
					<td><s:property value="%{ot.amount}" /></td>
				</tr>
			</table>
		</div>
	</s:elseif>

	<s:elseif test="type == 2">
		<p align="center" id="main">AIR</p>
		<div style="width: 50%; margin: 0 auto;">
			<table class="table">
				<tr>
					<th>출발지</th>
					<td><s:property value="%{oa.arv}" /></td>
				</tr>
				<tr>
					<th>도착지</th>
					<td><s:property value="%{oa.dep}" /></td>
				</tr>
				<tr>
					<th>가격</th>
					<td><s:property value="%{oa.price}" /></td>
				</tr>
				<tr>
					<th>인원 수</th>
					<td><s:property value="%{oa.people}" /></td>
				</tr>
				<tr>
					<th>좌석 등급</th>
					<td>
						<s:if test="%{oa.seat_grade } == 0">
							일반
						</s:if>
						<s:else>
							비즈니스
						</s:else>
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td><s:property value="%{oa.content}" /></td>
				</tr>
				<tr>
					<th>출발시간</th>
					<td><s:date name="%{oa.ad}" format="yyyy-MM-dd HH:mm" />
					</td>
				</tr>
				<tr>
					<th>도착시간</th>
					<td><s:date name="%{oa.dd}" format="yyyy-MM-dd HH:mm" />
					</td>
				</tr>
				<tr>
					<th>항공사</th>
					<td><s:property value="%{oa.air_company}" /></td>
				</tr>
			</table>
		</div>
	</s:elseif>

	<div id="min_s">
		<center>
			<button type="button"
				onclick="location.href='javascript:history.go(-1)'">
				<b>뒤로가기</b>
			</button>
			<form action="Main.action">
				<s:hidden name="id" value="%{session.session_id}" />
				<b><input type="submit" value="홈으로"></b>
			</form>
		</center>
	</div>
</body>
</html>