<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>
	<link href="./css/common.css" rel="stylesheet" type="text/css">
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
</style>
</head>
<body>
	<!-- header -->
	<div id="header">
		<!-- headTop -->
	
		<!-- headTop -->
	<!-- menu -->
	<div class="menu">
		<ul>
			<li><div class="menu_hotel"><a href="AdminMemberList.action">糕滚包府</a></div></li>
			<li><div class="menu_tour"><a href="AdminTourList.action">捧绢包府</a></div></li>
			<li><div class="menu_air"><a href="AdminAirList.action">亲傍鼻包府</a></div></li>
			<li><div class="menu_hotel"><a href="AdminHotelList.action">槛家包府</a></div></li>
			<li><div class="menu_hotel"><a href="AdminNoticeList.action">傍瘤荤亲包府</a></div></li>
		</ul>
	</div>
	<!-- menu -->
	</div>
	<!-- header -->
</body>
</html>