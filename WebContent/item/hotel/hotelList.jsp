<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 달력 관련 -->
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<!-- datepicker 한국어로 -->
	<script	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
    <script language="JavaScript" src="/TMT/item/hotel/hotelscript2.js"></script>
	<!-- 달력끝 -->
	<link rel="stylesheet" href="/TMT/item/hotel/hotel6.css" type="text/css">
	<style>
	</style>
	<script>
		$(function() {
			$(".subb").hide();
			$("div.sideMenu").click(function() {
				if ($(this).next().css("display") == "none")
					$(".subb").slideUp("fast");
				$(this).next().slideToggle("fast");
			})
		})
	</script>
</head>
<body>
<div id = "allbox">
		<div id="box1">
			<div id="subbox1">
			    <div id = "sub_h"><font size="4" color="white">호텔검색</font></div>
			    <div id ="search_h3">
					<form id="Hsearch" name="HsearchForm" onsubmit="return check()">
						    <br>
						    <b>&nbsp;&nbsp;목적지</b>
								<input type="text" size="26" name="hotelname"
								placeholder=" 나라/지역 혹은 호텔명" />
							<br><br>
							 <b>&nbsp;&nbsp;체크인</b><br>
							 <input type="text" size="21" name="inDay" id="inDay" readonly placeholder="체크인">
							<br><br><b>&nbsp;&nbsp;체크아웃</b><br>
							<input type="text" size="21" name="outDay" id="outDay" readonly
								placeholder="체크아웃"> <br>
							<br><b>&nbsp;&nbsp;인원 및 객실</b><br>
							<select name="number" class="form-control">
							<option value="1">1명</option>
							<option value="2">2명</option>
							<option value="3">3명</option>
							<option value="4">4명</option>
							<option value="5">5명</option>
							<option value="6">6명</option>
							<option value="7">7명</option>
							<option value="8">8명</option>
							<option value="9">9명</option>
							<option value="9">10명</option>
							</select> 
							<select name="roomnum" class="form-control">
							<option value="1">1개</option>
							<option value="2">2개</option>
							<option value="3">3개</option>
							<option value="4">4개</option>
							<option value="5">5개</option>
							</select> 
							
							<input type="submit" value="검색">								
					</form>
				</div>
			</div> <!-- subbox1 끝 -->
			<div id="subbox2">
				<div id = "sub_h"><font size="4" color="white">지역검색</font></div>
				<div id="search_h4">
					<div id=side>
						<div class="sideMenu">
						<br>
							<b>&nbsp;&nbsp;&nbsp;한국</b>
						</div>
						<ul class="subb">
							<li><a href="HotelList.action?num=1&hotelname=제주도">제주도</a></li>
						</ul>
						<hr>
						<div class="sideMenu">
							<b>중국</b>
						</div>
						<ul class="subb">
							<li><a href="HotelList.action?num=1&hotelname=상하이" class="on">상하이</a></li>
						</ul>
						<hr>
						<div class="sideMenu">
							<b>미국</b>
						</div>
						<ul class="subb">
							<li><a href="HotelList.action?num=1&hotelname=하노이" class="on">하노이</a></li>
						</ul>
						<hr>
						<div class="sideMenu">
							<b>일본</b>
						</div>
						<ul class="subb">
							<li><a href="HotelList.action?num=1&hotelname=오사카">오사카</a></li>
						</ul>
						<hr>
                    </div>
				</div>
			</div>  <!--  subbox2끝나는곳  -->
		</div><!-- box1끝내는곳  -->
		<div id = "box2">
		   <div id="list_Box">
				<div id = "range">
		     	   <font size="4"><a href="HotelList.action">전체 </a>&nbsp;&nbsp;</font><font size="3">
		     	   |&nbsp;&nbsp;
		     	   <a href="HotelList.action?num=2&hotelname=<s:property value="%{hotelname}" />&inDay=<s:property value="%{inDay}" />&outDay=<s:property value="%{outDay}" />&number=<s:property value="%{number}" />&roomnum=<s:property value="%{roomnum}" /> ">인기순</a>
		     	   &nbsp; |&nbsp; 
		     	   <a href="HotelList.action?num=3&hotelname=<s:property value="%{hotelname}" />&inDay=<s:property value="%{inDay}"/>&outDay=<s:property value="%{outDay}" />&number=<s:property value="%{number}" />&roomnum=<s:property value="%{roomnum}" /> "> 가격 낮은순</a>
		     	   &nbsp; | &nbsp;
		     	   <a href="HotelList.action?num=4&hotelname=<s:property value="%{hotelname}" />&inDay=<s:property value="%{inDay}" />&outDay=<s:property value="%{outDay}" />&number=<s:property value="%{number}" />&roomnum=<s:property value="%{roomnum}" /> ">별점순</a></font>
		        </div>
				<s:if test="Hotellist.size() <= 0">
					<br><br>
					<center>검색 내역이 없습니다.</center>
				</s:if> 
				<s:iterator value="Hotellist" status="stat">
				<div id= "list_hotel">
		            <div id= "list_hotel_image">
							<s:if test="main_image != null">
								<img src="/TMT/upload/hotel/<s:property value="%{main_image}" />"
									width="220" height="200">
							</s:if>
							<s:else>
								<img src="/TMT/images/noimage.jpg" width="220" height="200">
							</s:else>
					</div>
					<div id= "list_hotel_content">
					     <font size="5" color="#1b5ac2"><b><s:property value="name" /></b></font><br>
					    <font color="#1b5ac2"> &nbsp;<s:property value="country" />&nbsp;|&nbsp;<s:property value="region" /></font><br><br>
						 <div id= "list_hotel_content_2">
							  <s:if test="room == 0 || checkout <= date()">
						    			<img src="/TMT/images/watch.png" width="20" height="20"><font color="#e30413"><b>안타깝네요! 마지막 객실이 모두 예약되었습니다.</b></font><br>
						    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;해당 호텔은 저희 사이트상 잔여 객실이 없습니다. 다른 호텔을 이용해주세요!
					      	  </s:if>
						 	  <s:else>
						     	    <div id = "content_1">
						      			  룸 최대 인원  <s:property value="maxnum" /> 명<br>
										 <s:if test="room <= 10">
											<span style="font-size:15px; background-color: #e30413; color:white;">&nbsp;마감임박!&nbsp;</span> 잔여 객실 <s:property value="room" />개
										 </s:if>
										 <s:else>
											 잔여 객실 <s:property value="room" />개
										 </s:else>	
								 	</div>
						         	<div id = "content_2">
						 				<font size="4" color="orange"><b><s:property value="price" />원</b></font> / 1박<br>
						 				<button class="bnt_2" onclick="location.href='HotelView.action?no=<s:property value="%{no}" />&currentPage=<s:property value="%{currentPage}"/>'">상세보기</button>
						 			 </div>
						 	 </s:else>	
						</div>		
					</div>  <!-- 리스트 콘텐트 끝나는곳 -->
		        </div>
		        </s:iterator> 
		        <center><s:property value="pagingHtml" escape="false" /></center>
		    </div>
		</div>  <!-- box2 끝 -->
</div>
</body>
</html>