<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
	<form>
		<input type="text" name="searchbox" value="${param.searchbox }"/>
	</form>
	<div>
		<h4>투어&티켓</h4>
		<s:if test="Tourlist.size() == 0">
			검색값에 대한 투어&티켓이 없습니다
		</s:if>
		<s:else>
			<s:iterator value="Tourlist" status="stat_tour">
				test : <s:property value="region"/>
			</s:iterator>
		</s:else>
	</div>
	
	<div>
		<h4>항공권</h4>
		<s:if test="Airlist.size() == 0">
			검색값에 대한 항공권이 없습니다
		</s:if>
		<s:else>
			<s:iterator value="Airlist" status="stat_air">
				test : <s:property value="dep"/>
			</s:iterator>
		</s:else>
	</div>
		
	<div>
		<h4>호텔</h4>
		<s:if test="Hotellist.size() == 0">
			검색값에 대한 호텔이 없습니다
		</s:if>
		<s:else>
			<s:iterator value="Hotellist" status="stat_hotel">
				test : <s:property value="region"/>
			</s:iterator>
		</s:else>
	</div>
</body>
</html>