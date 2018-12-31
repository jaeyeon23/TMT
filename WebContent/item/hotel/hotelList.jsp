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
	<link rel="stylesheet" href="/TMT/item/hotel/tel.css" type="text/css">
	<style></style>
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
			<div id="subbox1"><font size="4" color="white">호텔검색</font>
			    <div id ="search_h3">
					<form id="Hsearch" name="HsearchForm"
						oninput="result.value = '인원 ' + parseInt(number.value) + '명'; result2.value = '객실 ' + parseInt(roomnum.value) + '개' "
						onsubmit="return check()">
						<center>
						    <b>목적지</b>
							<input type="text" size="28" name="hotelname"
								placeholder=" 나라/지역 혹은 호텔명" />
							<p>
							 <b>체크인</b><br>
							 <input type="text" size="22" name="inDay" id="inDay" readonly placeholder="체크인">
							 <br><b>체크아웃</b><br>
							<input type="text" size="22" name="outDay" id="outDay" readonly
								placeholder="체크아웃"> <br>
							<table>
								<tr>
									<td id="view" height="40" width="150" align="center"><output
											name="result">인원 0명</output></td>
									<td><input type="number" name="number" min=1 max=10
										value="0"></td>
										<br>
									<td id="view" height="40" width="150" align="center"><output
											name="result2">객실0개</output></td>
									<td><input type="number" name="roomnum" min=1 max=10
										value="0"></td>
									<td><input type="submit" value="검색"></td>
								</tr>
							</table>
						</center>
					</form>
				</div>
			</div>
			<div id="subbox2">
				<font size="4" color="white">지역검색</font>
				<hr>
				<div id="search_h4">
					<div id=side>
						<div>
							<a href="HotelList.action" class="on"><font color="#1b5ac2"><b>전체</b></font></a>
						</div>
						<hr>
						<div class="sideMenu">
							<b>한국</b>
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

		</div>
		<div id = "box2">
		   <div id="list_Box">
				<table width="980" height="1350" border="0" cellspacing="1" cellpadding="2">
					<tr bgcolor="#F3F3F3">
						<td colspan="4" width = "680" height="40" ><a href="HotelList.action">호텔리스트[전체보기]</a></td>
						<td width = "100"><a href="HotelList.action?num=2&hotelname=<s:property value="%{hotelname}" />&inDay=<s:property value="%{inDay}" />&outDay=<s:property value="%{outDay}" />&number=<s:property value="%{number}" /> ">[인기순]</a></td>
						<td width = "100"><a href="HotelList.action?num=3&hotelname=<s:property value="%{hotelname}" />&inDay=<s:property value="%{inDay}"/>&outDay=<s:property value="%{outDay}" />&number=<s:property value="%{number}" /> ">[가격순]</a></td>
						<td width = "100"><a href="HotelList.action?num=4&hotelname=<s:property value="%{hotelname}" />&inDay=<s:property value="%{inDay}" />&outDay=<s:property value="%{outDay}" />&number=<s:property value="%{number}" /> ">[별점순]</a></td>
					</tr>
					<s:if test="Hotellist.size() <= 0">
						<tr>
							<td colspan=7>
								<center>검색 내역이 없습니다.</center>
							</td>
						</tr>
					</s:if>
					<s:iterator value="Hotellist" status="stat">
					    <a href="HotelView.action?no=<s:property value="%{no}" />">
						<tr bgcolor="#FFFFFF" align="center">
							<td width="300" height="250">
							     <s:if test="main_image != null">
									<img src="/TMT/upload/hotel/<s:property value="%{main_image}" />" width="300" height="250">
								</s:if> 
								<s:else>
									<img src="/TMT/images/noimage.jpg" width="300" height="250">
								</s:else> 
							</td>
							<td colspan="3"><h2><s:property value="name" /></h2><s:property value="country" />&nbsp;|&nbsp;<s:property value="region" /></td>
							<td colspan="2"><s:property value="price" /> 원 / 1박<br>최대 <s:property value="maxnum" /> 명</td>
							<td>잔여객실<s:property value="room" />개</td>
						</tr>
						</a>
					</s:iterator>
					<tr align="center">
						<td colspan="7"><s:property value="pagingHtml" escape="false" /></td>
					</tr>
				</table>
			</div>
		</div>
		</div>
	</div>
</body>
</html>