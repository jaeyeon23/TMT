<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- </head>
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
</table> --%>
<link rel="stylesheet" href="/TMT/item/air/air_check.css" type="text/css">
<style>
#contents_1 button{
	background-color: #1b5ac2; 
	padding: 8px 20px;
	border: 1px solid #1b5ac2;
	color:white;
	text-align: center;
	border-radius: 5px 5px 5px 5px ;
	width: 110px;
	height: 47px;
}
#contents_1 button:hover{
	background-color: #323ab0; 
}
</style>
</head>
<body>
    <div id="alls">
     <center><b><font size="5" color="#1b5ac2">예약 하기</font></b></center>
        <div id="tops">
			<div id="tops_1">
				<ul>
					<li class="c2">1</li>
					<li><hr></li>
					<li class="c2">2</li>
					<li><hr></li>
					<li class="c1">3</li>
				</ul>
			</div>
		</div>
		<div id="tops2">
			<div id="tops2_1">운임규정확인</div>
			<div id="tops2_2">예약정보확인</div>
			<div id="tops2_3">예약완료</div>
		</div>
        <div id="contents" style="padding-bottom:20px;">
            <div id="contents_1">
			<center><h2>Thank you</h2><br>예약이 완료 되었습니다.<br> 예약하신 정보는 <b><font color="#e30413">예약내역</font></b> 에서 확인가능합니다.<br>
				<br><br>
				<button type="button" onclick="location.href='Main.action'"><b>홈으로</b></button>
			</center>
			</div>
		</div>
    </div>
</body>
</html>