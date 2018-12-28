<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<link rel="stylesheet" href="/TMT/item/tour/tourcss.css" type="text/css">
<script>
$(function() 
{
	$(".subb").hide();
	$("div.sideMenu").click(function() 
	{
		if($(this).next().css("display")=="none")
			$(".subb").slideUp("fast");
		 $(this).next().slideToggle("fast"); 
	})
})
</script>
<style></style>
</head>
<body>
	<div id=tuor_body>
		<div id="tuor_side">
			<div id=side>
			     <b>CATEGORY</b>
			     <hr color="#8C8C8C" size="4">
				<div><a href="TourList.action" class="on"><font color="#1b5ac2"><b>전체</b></font></a></div>
				<hr>
				<div class="sideMenu"><b>한국</b></div>
				<ul class="subb">
					<li><a href="TourList.action?tourname=제주도" class="on">제주도</a></li>
				</ul>
				<hr>
				<div class="sideMenu"><b>중국</b></div>
				<ul class="subb">
					<li><a href="TourList.action?tourname=상하이" class="on">상하이</a></li>
				</ul>
				<hr>
				<div class="sideMenu"><b>미국</b></div>
				<ul class="subb">
					<li><a href="TourList.action?tourname=워싱턴" class="on">워싱턴</a></li>
				</ul>
				<hr>
			</div>
		</div>
		<div id=tourList>
				<dl>
					<dt>
						<form id="Tsearch">
						<div id = "search_bar">
							<input type="text" name="tourname" placeholder=" 여행지,장소,상품을 검색해보세요"/> 
							<button>검색</button>
						</div>
						</form>
						<a href="TourList.action?num=1&tourname=<s:property value="tourname" />">[인기순]</a> 
							<a href="TourList.action?num=2&tourname=<s:property value="tourname" />">[가격순]</a>
							<a href="TourList.action?num=3&tourname=<s:property value="tourname" />">[별점순]</a>
						
					</dt>

				<br>
					<dd>
						<ul>
						<s:iterator value="Tourlist" status="stat">
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
							    	(0)	
								</div>
							</div>
							</a>
					  	  </s:iterator>
					     <center><s:property value="pagingHtml" escape="false" /></center>
						</ul>
						
					</dd>
				</dl>
				
			</div>
	</div>
	
</body>
</html>