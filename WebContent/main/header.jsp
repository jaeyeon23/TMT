<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>
	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<link href="./css/bootstrap.css" rel="stylesheet">
	<link href="./css/bootstrap-theme.css" rel="stylesheet">
	<script src="js/bootstrap.js" type="text/javascript"></script>

	<!-- 달력 -->
	<link rel="stylesheet" href="./calendar/jquery-ui.min.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="./calendar/jquery-ui.min.js"></script>
	<script src="./calendar/datepicker-ko.js"></script>
	<script src="./script/calendar.js" type="text/javascript"></script>

	<link rel="stylesheet" href="/TMT/css/main/header.css"/>

</head>
<body>
	<!-- header -->
	<div id="header">
		<!-- headTop -->
		<div class="headTop">
			<!-- headerTop_left -->
			<div class="headerTop_left">
				<a href="Main.action"> 
				<br><br><br><br>
					<img src="./images/logo3.png" width="300px" alt="TMT" id="logo"> 
					<!-- 로고 및 로고이미지에  링크추가 -->
				</a>
			</div>

			<!--   회원로그인 후           -->
			<s:if test='%{session.session_id!=null}'>
			<p align="right" style="margin-right:30px;"><s:property value="session.session_name"/>님이 로그인 하셨습니다.</p><br>
			<div class="ProfileNavItems " style="margin-right:30px;">

				<div class="ProfileNavItems__item gtm-gnb-signin">
					<a href="InsertBasket.action" class="ProfileNavItems__button" >위시리스트</a>&nbsp;
				</div>
				<div class="ProfileNavItems__item gtm-gnb-signup">
					<a href="OrderList.action" class="ProfileNavItems__button" >예약내역</a>&nbsp;
				</div>
				<div class="ProfileNavItems__item gtm-gnb-signin">
					<a href="MyPage.action" class="ProfileNavItems__button" >마이페이지</a>&nbsp;&nbsp;
				</div>
				<div class="ProfileNavItems__item gtm-gnb-signup">
					<a href="Logout.action" class="ProfileNavItems__button ProfileNavItems__button--outline" >로그아웃</a>
				</div>
			</div>
			</s:if>
			
			<!--  관리자 로그인           -->			
			<s:elseif test='%{session.session_admin=="0"}'>
			<div class="ProfileNavItems " style="margin-right:30px;">
				<div class="ProfileNavItems__item gtm-gnb-signup">
					관리자&nbsp;
					<a href="Logout.action" class="ProfileNavItems__button ProfileNavItems__button--outline" >로그아웃</a>
				</div>
			</div>
			</s:elseif>

			<!--  로그인 전      -->			

			<s:else>
			<div class="ProfileNavItems " style="margin-right:30px;">
				<div class="ProfileNavItems__item gtm-gnb-signin">
					<a href="LoginForm.action " class="ProfileNavItems__button" >로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
				<div class="ProfileNavItems__item gtm-gnb-signup">
					<a href="JoinForm.action" class="ProfileNavItems__button ProfileNavItems__button--outline" >회원가입</a>
				</div>
			</div>
			</s:else>
		</div>
		<!-- headTop -->
	<!-- menu -->
	<div class="menu">
		<ul>
			<li><div class="menu_home"><a href="Main.action">홈</a></div></li>
			<li><div class="menu_tour"><a href="TourList.action">투어&티켓</a></div></li>
			<li><div class="menu_air"><a href="AirList.action">항공권</a></div></li>
			<li><div class="menu_hotel"><a href="HotelList.action">숙소</a></div></li>
			<li><div class="menu_hotel"><a href="NoticeList.action">고객센터</a></div></li>
		</ul>
	</div>
	<!-- menu -->
	</div>
	<!-- header -->
</body>
</html>