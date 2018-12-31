<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<style>
	#mainSearch_searchbox{
		width:25%;
	}
	
	#mainSearch_body{
		margin-left:120pt;
	}
	#searchTour_list{
		width:100%;
		height:450px;
		margin-top:50pt;
	}
	#contentT{
		background-color: white;
	 	margin: 0 12px;
	}
	#contents img{
		border-radius: 15px 15px 0 0;
		padding: 1px 1px 1px 1px;
		width:290px; 
		height:250px;
	}
	#contents{
		float: left;
		margin: 20px 10px;
		border:1px solid #BBBBBB;
		border-radius: 15px;
		height:380px;
	}
	#contents:hover{
		border:1px solid #1b5ac2;
	}
	#contents dt{
		margin: 0 25px;
	}
	
	#searchHotel_list{
		width:100%;
		height:450px;
		margin-top:50pt;
	}
	</style>
</head>
<body>
	<div id="mainSearch_body">
		<form>
			<input type="text" id="mainSearch_searchbox" name="searchbox" value="${param.searchbox }"/>
		</form>
		<div id="searchTour_list">
			<h4>투어&티켓</h4>
			<s:if test="Tourlist.size() == 0">
				검색값에 대한 투어&티켓이 없습니다
			</s:if>
			<s:else>
				<s:iterator value="Tourlist" status="stat_tour">
					<a href="TourView.action?no=<s:property value="%{no}" />">
						<div id="contents">
						    <div id= imageT>
							<s:if test="image1 != null">
								<img src="/TMT/upload/tour/<s:property value="%{image1}" />">
							</s:if> 
							<s:else>
								<img src="/TMT/images/noimage.jpg">
							</s:else>
							</div>
							<div id= contentT>
							<h4>
								[<s:property value="region" />]<s:property value="name" /></h4>
								<font color="orange" size = "5"><b><s:property value="price" />원</b></font> / 1인<br>
								<s:if test="grade == 0">
								<font color=#BDBDBD>★★★★★</font>
						    	</s:if> 
						    	<s:elseif test ="grade == 1">
						    		<font color="red">★</font><font color="#BDBDBD">★★★★</font>
						    	</s:elseif>	
						    	<s:elseif test ="grade == 2">
						    		<font color="red">★★</font><font color="#BDBDBD">★★★</font>
						    	</s:elseif>	
						    	<s:elseif test ="grade == 3">
						    		<font color="red">★★★</font><font color="#BDBDBD">★★</font>
						    	</s:elseif>	
						    	<s:elseif test ="grade == 4">
						    		<font color="red">★★★★</font><font color="#BDBDBD">★★★★★</font>
						    	</s:elseif>					
						    	<s:elseif test ="grade == 5">
						    		<font color="red">★★★★★</font>
						    	</s:elseif>			
							</div>
						</div>
					</a>
				</s:iterator>
			</s:else>
		</div>
		<button type="button" class="btn btn-success" onclick="window.location.href='TourList.action'">투어 & 티켓 자세히 보기</button>
		
		<div id="searchHotel_list">
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
	</div>
</body>
</html>