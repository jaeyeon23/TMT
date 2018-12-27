<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
	<input type="text" name="searchbox" value="${param.searchbox }"/>
	
	<div>
		투어&티켓
	</div>
	
	<div>
		항공권
		<s:iterator value="Airlist" status="stat">
			test : <s:property value="dep"/>
		</s:iterator>
	</div>
	
	<div>
		호텔
	</div>
</body>
</html>