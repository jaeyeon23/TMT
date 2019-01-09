<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="css/mainSearch.css" rel="stylesheet" type="text/css">
	<style>
		input[type=text]{
			border: 2px solid #aaa;
			border-radius: 4px;
			margin: 8px	0;
			outline: none;
			padding: 10px;
			box-sizing: border-box;
			transitio;
			font-size:20pt;
		}
		
		input[type=text]:focus{
			border-color: dodgerBlue;
			box-shadow: 0 0 8px 0 dodgerBlue;
		}
	</style>
</head>
<body>
	<div id="mainSearch_body">
		<form>
			<input type="text" id="mainSearch_searchbox" name="searchbox" value="${param.searchbox }"/>
		</form>
			<h3>투어&티켓</h3>
			<s:if test="Tourlist.size() == 0">
				<div id="searchTour_list" style="height:50px;">
					검색값에 대한 투어&티켓이 없습니다
				</div>
			</s:if>
			<s:else>
				<div id="searchTour_list">
					<s:iterator value="Tourlist" status="stat_tour">
						<a href="TourView.action?no=<s:property value="%{no}" />">
							<div id="contents">
							    <div id= imageT>
								<s:if test="main_image != null">
									<img src="/TMT/upload/tour/<s:property value="%{main_image}" />">
								</s:if> 
								<s:else>
									<img src="/TMT/images/noimage.jpg">
								</s:else>
								</div>
								<div id= contentT>
								<h4>
									[<s:property value="region" />]<s:property value="name" /></h4>
									<font color="orange" size = "5"><b><s:property value="price" />원</b></font> / 1인<br>
								</div>
							</div>
						</a>
					</s:iterator>
				</div>
			</s:else>
			
			<s:if test="Tourlist.size() == 0">
				<button type="button" class="btn btn-success" onclick="window.location.href='TourList.action'">투어 & 티켓 자세히 보기</button>
			
			</s:if>
			<s:else>
				<button type="button" class="btn btn-success" onclick="window.location.href='TourList.action?tourname=${searchbox}'">투어 & 티켓 자세히 보기</button>
			</s:else>
			
				
		
			<br><br><br>
			<h3>호텔</h3>
			<s:if test="Hotellist.size() == 0">
				<div id="searchHotel_list" style="height:50px;">
					검색값에 대한 호텔이 없습니다
				</div>
			</s:if>
			<s:else>
				<div id="searchHotel_list">
					<s:iterator value="Hotellist" status="stat_hotel">
						<a href="HotelView.action?no=<s:property value='%{no}' />">
							<div id="contents">
							    <div id= imageT>
								<s:if test="main_image != null">
									<img src="/TMT/upload/hotel/<s:property value="%{main_image}" />">
								</s:if> 
								<s:else>
									<img src="/TMT/images/noimage.jpg">
								</s:else>
								</div>
								<div id= contentT>
								<h4>
									[<s:property value="region" />]<s:property value="name" /></h4>
									<font color="orange" size = "5"><b><s:property value="price" />원</b></font> / 1인<br>
								</div>
							</div>
						</a>
					</s:iterator>
				</div>
			</s:else>
			<s:if test="Hotellist.size() == 0">
				<button type="button" class="btn btn-success" onclick="window.location.href='HotelList.action'">호텔 자세히 보기</button><br><br>
			</s:if>
			<s:else>
				<button type="button" class="btn btn-success" onclick="window.location.href='HotelList.action?num=1&hotelname=${searchbox}'">호텔 자세히 보기</button><br><br>
			</s:else>
</body>
</html>