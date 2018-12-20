<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>
	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<link href="./css/bootstrap.css" rel="stylesheet">
	<link href="./css/bootstrap-theme.css" rel="stylesheet">
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<style>
		.menu_home{
			border-bottom: 3px solid #51abf3!important;
	    	color: #343a40;
	    	font-weight: 700;
	    	display: inline;
		}
		
		.menu_tour, .menu_air, .menu_hotel{
			color: #495056;
		    display: inline;
		}
		
		.menu_tour:hover, .menu_air:hover, .menu_hotel:hover{
			border-bottom: 3px solid #b9e2fa!important;
			
		}
		
		#header {
		    background-color: #fff;
		    height: auto;
		    position: relative;
		    width: 100%;
		    font-family: -apple-system,BlinkMacSystemFont,Malgun Gothic,"\B9D1\C740 \ACE0\B515",Roboto,Helvetica,Arial,sans-serif;
		}
		
		.headerTop{
		    width: 100%;
		    height: 80px;
		    margin-bottom: 100pt;
		    
		}
	
		.headerTop_left{
			justify-content: flex-start;
		    margin-top: 20px;
		    display:inline;
		    position: relative;
		}
		.menu{
			width: 100%;
	    	border-bottom: 1px solid #dee2e6;
	    	margin-top:20pt;
		}
		.headerTop_right{
			font-size: 30px;
			display:inline;
			position:absolute;
	    	left: 1150px;
	    	top: 50px;
		}
		
		.headerTop_right_membership{
			padding: 15px 32px;
		    border: 1px solid #a7d4f9;
		    font-size: 25px;
		    font-weight: 700;
		    color: #2b96ed;
		    transition: background-color .15s ease;
		    line-height: 40px; 
		    display:inline;
		    color: blue;
		}
		
		li {
			display: inline;
			margin-left: 40px;
			font-size: 20px;
			list-style: none;
		}
		
		#logo{
			margin-left : 80px;
		}
		
		a, a:active, a:hover, a:link, a:visited {
	    	text-decoration: none;
	    	cursor: pointer;
	    	color: black;
		}
		
		input[type=text]{
			border: 2px solid #aaa;
			border-radius: 4px;
			margin: 8px	0;
			outline: none;
			padding: 10px;
			box-sizing: border-box;
			/* transitio; */
		}
		
		input[type=text]:focus{
			border-color: dodgerBlue;
			box-shadow: 0 0 8px 0 dodgerBlue;
		}
	</style>
</head>
<body>
	<!-- header -->
	<div id="header">
		<!-- headTop -->
		<div class="headTop">
			<!-- headerTop_left -->
			<div class="headerTop_left">
				<a href="Main.action"> 
					<img src="./images/logo.jpg" width="300px" alt="TMT" id="logo"> 
					<!-- 로고 및 로고이미지에  링크추가 -->
				</a>
			</div>
			<!-- headerTop_left -->
			<!-- headerTop_right -->
			<div class="headerTop_right">
				<a href="#">로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<!-- headerTop_right_membership -->
				<a href="#"><div class="headerTop_right_membership">회원가입</div></a>
				<!-- headerTop_right_membership -->
			</div>
			<!-- headerTop_right -->
		</div>
		<!-- headTop -->
	<!-- menu -->
	<div class="menu">
		<ul>
			<li><div class="menu_home"><a href="Main.action">홈</a></div></li>
			<li><div class="menu_tour"><a href="TourList.action">투어&티켓</a></div></li>
			<li><div class="menu_air"><a href="AirList.action">항공권</a></div></li>
			<li><div class="menu_hotel"><a href="HotelList.action">숙소</a></div></li>
		</ul>
	</div>
	<!-- menu -->
	</div>
	<!-- header -->
</body>
</html>