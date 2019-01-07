<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/TMT/item/air/air_check.css" type="text/css">
</head>
<body>
	<div id="alls">
		<center>
			<b><font size="5" color="#1b5ac2">예약 하기</font></b>
		</center>
		<div id="tops">
			<div id="tops_1">
				<ul>
					<li class="c2">1</li>
					<li><hr></li>
					<li class="c1">2</li>
					<li><hr></li>
					<li class="c2">3</li>
				</ul>
			</div>
		</div>
		<div id="tops2">
			<div id="tops2_1">운임규정확인</div>
			<div id="tops2_2">예약정보확인</div>
			<div id="tops2_3">예약완료</div>
		</div>
		<div style="background-color: #58ACFA; color:white; padding:5px; margin:5px;">
			<center>훌륭한 선택을 하셨습니다. 지금 이 가격을 놓치지 마세요!</center>
		</div>
		<div id="contents">
			<span class="label_blue label_box">가는편</span>
			<strong><s:property value="%{result.arv}" /></strong>
			&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;
			<strong><s:property value="%{result.dep}" /></strong>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<s:date name="%{result.ad}" format="MM월 dd일" />  
			<br><br>
			<div id="contents_left">
				<div id="contents_left_1">
					<div style="margin-right:80px; float:left;">
						<s:property value="%{result.air_company}"/>
					</div>
					<div style="margin-right:80px; float:left;">
						<s:date name="%{result.ad}" format="HH:mm"/>
						&nbsp;<span class="glyphicon glyphicon-arrow-right" style="color:gray;"></span>&nbsp;
						<s:date name="%{result.dd}" format="HH:mm"/>
					</div>
					<div style="font-size:10pt;">직항</div>	
					
					<div style="margin-left:150px; margin-right:50px; float:left;">
						<h5><s:property value="%{result.arv}" /></h5>
					</div>
				
					<div style="padding-top:8px;">
						<h5><s:property value="%{result.dep}" /></h5>
					</div>
				
				</div>
				<div id="contents_left_1">
					<div style="margin-right:80px; float:left;">
						<span class="ico_airline"><img src="./upload/air/<s:property value='%{result.image1}'/>"></span>
					</div>
					<div style="float:left;margin-right:10px;">
						<s:date name="%{result.ad}" format="MM월 dd일" />
					</div>  
					<div>
						<table>
							<tr>
								<td rowspan="3" style="font-size: xx-large;">
									↓
								</td>
								<td>
									&nbsp;&nbsp;&nbsp;<strong><s:date name="%{result.ad}" format="HH:mm"/></strong>&nbsp;&nbsp;<s:property value="%{result.arv}"/>
								</td>
							</tr>
							<tr>
								<td style="color:gray;">
									<s:if test="hour == 0">
										&nbsp;&nbsp;&nbsp;<small><s:property value="min"/>분</small>
									</s:if>
									<s:else>
										&nbsp;&nbsp;&nbsp;<small><s:property value="hour"/>시간 <s:property value="min"/>분</small>
									</s:else>
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;&nbsp;&nbsp;<strong><s:date name="%{result.dd}" format="HH:mm"/></strong>&nbsp;&nbsp;<s:property value="%{result.dep}"/>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div id="contents_right">
			<div class="contents_right_1">
				<div style="color:#58ACFA; font-size:15pt;">
					<strong><s:property value="%{result.arv}"></s:property>
					&nbsp;→&nbsp;
					<strong><s:property value="%{result.dep}"></s:property>
				</div>
				<div style="font-size: small;">
					<s:date name="%{result.ad}" format="MM월 dd일"/>-
					<s:date name="%{result.dd}" format="MM월 dd일"/>
					·
					승객<s:property value="%{#parameters.seat}"/>명
				</div>
			</div>
			<div class="contents_right_1">
				<div>
					성인 <strong style="color:#58ACFA;"><s:property value="%{#parameters.seat}"/></strong>명
				</div>
			</div>
			<div class="contents_right_1">
				<div>
					<s:property value="%{result.content}"/>
				</div>
			</div>
			<div class="contents_right_1">
				<div style="font-size: large;">
					총 요금 &nbsp;${result.price * param.seat}원
				</div>
			</div>
		</div>
		
		<div id="min_s">
			<center>
				<button type="button" onclick="location.href='javascript:history.go(-1)'">
					<b>취소하기</b>
				</button>
				<form action="AirCheck.action">
					<s:hidden name="no" value="%{no}" />
					<s:hidden name="seat" value="%{#parameters.seat}" />
					<s:hidden name="id" value="%{session.session_id}" />
					<b><input type="submit" value="예약하기"></b>
				</form>
			</center>
		</div>
	</div>
</body>
</html>