<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 달력 관련-->
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
					<!-- 카테고리 -->
					<div id=side>
						<s:iterator value="counList" status="a">
						<div class="sideMenu">
						<br>
							<b>&nbsp;&nbsp;&nbsp;<s:property value="%{counList[#a.index].country}"/></b>
						</div>
						<ul class="subb">
							<s:iterator value="regionList" status="b">
								<s:if test="%{counList[#a.index].country == country}"> 
									<li><a href="HotelList.action?num=1&hotelname=<s:property value="%{region}"/>"><s:property value="%{region}"/></a></li>
								</s:if>
							</s:iterator>
						</ul>
						<hr>
						</s:iterator>
                    </div>
                   <!-- /카테고리 -->
				</div>
			</div>  <!--  subbox2끝나는곳  -->
		</div><!-- box1끝내는곳  -->
		<div id = "box2">
		   <div id="list_Box">
				<div id = "range">
		     	   <font size="4"><a href="AdminHotelList.action">전체 </a>&nbsp;&nbsp;</font><font size="3">
		     	   |&nbsp;&nbsp;
		     	   <a href="AdminHotelList.action?num=2&hotelname=<s:property value="%{hotelname}" />&inDay=<s:property value="%{inDay}" />&outDay=<s:property value="%{outDay}" />&number=<s:property value="%{number}" />&roomnum=<s:property value="%{roomnum}" /> ">인기순</a>
		     	   &nbsp; |&nbsp; 
		     	   <a href="AdminHotelList.action?num=3&hotelname=<s:property value="%{hotelname}" />&inDay=<s:property value="%{inDay}"/>&outDay=<s:property value="%{outDay}" />&number=<s:property value="%{number}" />&roomnum=<s:property value="%{roomnum}" /> "> 가격 낮은순</a>
		     	    &nbsp; | &nbsp;
		     	   <a href="AdminHotelWriteForm.action">등록</a></font>
		        </div>
				<s:if test="AdminHotellist.size() <= 0">
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
							<div id = "content_1">
				      			  룸 최대 인원  <s:property value="maxnum" /> 명<br>
								 <s:if test="room <= 10">
									<span style="font-size:15px; background-color: #e30413; color:white;"></span> 잔여 객실 <s:property value="room" />개
								 </s:if>
								 <s:else>
									 잔여 객실 <s:property value="room" />개
								 </s:else>	
						 	</div>
				         	<div id = "content_2">
				 				<font size="4" color="orange"><b><s:property value="price" />원</b></font> / 1박<br>
				 				<button class="bnt_2" onclick="location.href='AdminHotelView.action?no=<s:property value="%{no}" />&currentPage=<s:property value="%{currentPage}"/>'">상세보기</button>
				 			 </div>
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