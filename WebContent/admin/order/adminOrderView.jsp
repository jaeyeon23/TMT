<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link rel="stylesheet" media="screen" href="css/admin/view1.css">
<link rel="stylesheet" media="all" href="css/admin/view2.css">
<link rel="stylesheet" media="screen" href="css/admin/view3.css">
<link rel="stylesheet" href="service/notice.css" type="text/css">
<script src="../js/bootstrap.js" type="text/javascript"></script>
</head>
<body>
<div class="resp-container--row ">
	<div>
		<a href="AdminOrderList.action?c=t">투어</a> &nbsp;&nbsp; &nbsp;&nbsp;
		<a href="AdminOrderList.action?c=a">항공</a> &nbsp;&nbsp;  &nbsp;&nbsp;
		<a href="AdminOrderList.action?c=h">호텔</a>
	</div>
<s:if test='%{c=="h"}'>
<s:property value="%{resultClass.name}"/>
</s:if>

<s:if test='%{c=="t"}'>
<s:property value="%{resultClass.name}"/>
</s:if>








</body>
</html>