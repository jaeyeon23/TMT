<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역 상세보기</title>
<link rel="stylesheet" href="/TMT/order/Oviewcss4.css" type="text/css">
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
	margin-bottom: 16%;
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
<s:if test="type == 2">
<div id="all-view">
	<div id="all-pp">
      <div id="view-title">
            <b><font size="5">Air -  상세내역</font></b>
      </div>
      <div id ="view-cont">
          <div id="air_content_N" style="font-size:18px;">
     	                <div id="image_AA">
							<s:if test="oa.image1 != null">
								<span class="ico_airline"><img
									src="/TMT/upload/air/<s:property value='%{oa.image1}'/>"></span>
							</s:if>
							<s:else>
								<img src="/TMT/images/noimage.jpg">
							</s:else>
						</div>
						 <div id="ABC_AA">
						   <b><s:property value="%{oa.air_company}"/></b>
						 </div>
						 <div id="ABC_AB">
							<font style="background-color:#DB0000;color:white; padding:1%;">출 발</font><br>
							<s:date name="oa.ad" format="M월 dd일"/>
						 </div>
						 <div id="ABC_AC" >
						    <s:property value="%{oa.arv}"/><br>
						    <s:date name="oa.ad" format="HH:mm"/> 
						 </div>
						 <div id="ABC_AD" >
						     <img src="/TMT/images/air_c.JPG" width="80%;">
						 </div>
						 <div id="ABC_AE" >
						     <s:property value="%{oa.dep}"/><br>
						     <s:date name="oa.dd" format="HH:mm"/>
						 </div>
						 <div id="ABC_AF" >
						     <font style="background-color:#003399; color:white; padding:1%;">도착</font><br>
						     <s:date name="oa.dd" format="M월dd일"/>
						 </div>
			</div>
			<div id="air_content_plus">
				<div id="AB_AA" style="font-size:20px;">
					좌석수<br>
					좌석등급  <br>
					
					좌석혜택<br>
				</div>
				<div id="AB_AA2" style="font-size:20px; text-align: right;">
					<s:property value="%{oa.people}" /> 개<br>
					<s:if test="%{oa.seat_grade } == 0">
					일반
					</s:if>
					<s:else>
					비즈니스
					</s:else><br>
					
					<s:property value="%{oa.content}" /><br>
				</div>
				<div id="AB_AB" style="font-size:20px;">
				    가격 : <s:property value="%{oa.price}" /> 원
				</div>
			</div>
      </div>
      </div>
      
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
</div>

</s:if>

<s:elseif test="type == 0">
<div id="all-viewH">
	<div id="all-ppH">
      <div id="view-titleH">
            <b><font size="5">Hotel -  상세내역</font></b>
      </div>
      <div id ="view-contH">
          <div id="air_content_NH">
     	                <div id="image_AAH">
							<s:if test="oh.image1 != null">
								<img  src="/TMT/upload/hotel/<s:property value='%{oh.image1}'/>" width="380"  height="190">
							</s:if>
							<s:else>
								<img src="/TMT/images/noimage.jpg">
							</s:else>
						</div>
						 <div id="ABC_AAH">
						   <b><font size="5"><s:property value="%{oh.name}" /></font><br> [<s:property value="%{oh.country}" /> - <s:property value="%{oh.region}" />]</b>
						 </div>
						 <div id="ABC_ABH">
						      <b><font size="4" > 총 예약금액</font></b><br>
							<b><font size="5" color="orange"> <s:property value="%{oh.price}" />원</font></b>
						 </div>
			</div>
			<div id="air_content_plusH">
				<div id="AB_AAH">
				체크인<br> 
				체크아웃 <br>
				객실수<br>
				인 원<br>
				</div>
				<div id="AB_ACH">
				  <s:property value="%{oh.checkin}" /><br> 
				  <s:property value="%{oh.checkout}"/><br>
			      <s:property value="%{oh.room}" /> 개<br>
				  <s:property value="%{oh.people}" /> 명<br>
				</div>
				<div id="AB_ABH">
				  <b><font size="4"> 숙소문의 : <s:property value="%{oh.tel}" /></font></b>
				</div>
			</div>
      </div>
      </div>
      
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
</div>

</s:elseif>


<s:elseif test="type == 1">
<div id="all-viewT">
	<div id="all-ppH">
      <div id="view-titleH">
            <b><font size="5">Tour -  상세내역</font></b>
      </div>
      <div id ="view-contH">
          <div id="air_content_NH">
     	                <div id="image_AAH">
							<s:if test="ot.image1 != null">
								<img  src="/TMT/upload/tour/<s:property value='%{ot.image1}'/>" width="380" height="190">
							</s:if>
							<s:else>
								<img src="/TMT/images/noimage.jpg">
							</s:else>
						</div>
						 <div id="ABC_AAH">
						   <b><font size="5"><s:property value="%{ot.name}" /></font><br> [<s:property value="%{ot.country}" /> - <s:property value="%{ot.region}" />]</b>
						 </div>
						 <div id="ABC_ABH">
						      <b><font size="4"> 총 예약금액</font></b><br>
							<b><font size="5" color="orange"> <s:property value="%{ot.price}" />원</font></b>
						 </div>
			</div>
			<div id="air_content_plusT">
				<div id="AB_ABT">
				  <b><font size="4"> 예약개수 : <s:property value="%{ot.amount}" /> 개</font></b>
				</div>
			</div>
      </div>
      </div>
      
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
</div>

</s:elseif>

</body>
</html>