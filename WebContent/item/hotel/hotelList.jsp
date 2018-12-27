<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
    <script language="JavaScript" src="/TMT/item/hotel/hotelscript.js"></script>
	<!-- 달력끝 -->
	<link rel="stylesheet" href="/TMT/item/hotel/hotelcss.css" type="text/css">
	<style></style>
	<script>
	
	</script>
</head>
<body>
	<div id="hotelBox">
		<div class="hotel_search_Box">
			<div id="search_h1">첫번재 검색방법(상품명or숙소명,날짜,인원)
			<form id="Hsearch" oninput = "result.value = '인원 ' + parseInt(number.value) + '명' ">
				<center>
					<input type="text" size="60" name="hotelname" placeholder=" 나라/지역 혹은 호텔명을 입력해주세요."/>
					<input type="text" size="19"  name="inDay" id="inDay" placeholder="체크인">
       				 ~
        			<input type="text" size="19" name="outDay" id="outDay" placeholder="체크아웃"> 
					<br>
					<table>
							<tr>
								<td id="view" height="32" width="150" align="center">
									<output	name="result">인원 0명</output></td>
								<td>
								<input type="number" name="number" min=1 max=10 value="0">
								</td>
								<td>
								<input type="submit" value="검색">
								</td>
							</tr>
						</table>
				</center>
			</form>
			</div>
			<div id="search_h2">두번째 검색방법(국가,지역)
			   <div class="hc_m_content">
							<h3>
								지역별 정렬
							</h3>
							<ul>
								<li>
										<a href="HotelList.action?num=1&hotelname=일본"
											data-ceid="placelanding_relatedplace">일본</a>
									
								</li>
								<li>
									
										<a href="HotelList.action?num=1&hotelname=미국"
											data-ceid="placelanding_relatedplace">미국</a>
								
								</li>
								<li>
								
										<a href="HotelList.action?num=1&hotelname=한국"
											data-ceid="placelanding_relatedplace">한국</a>
									
								</li>
								<li>
									
										<a href="HotelList.action?num=1&hotelname=중국"
											data-ceid="placelanding_relatedplace">중국</a>
									
								</li>
							</ul>
						</div>
			
			
			</div>
		</div>
		<div id="hotel_list_Box">
			<div id="list_Box">
				<table width="980" height="1350" border="0" cellspacing="1" cellpadding="2">
					<tr bgcolor="#F3F3F3">
						<td colspan="4" width = "680" height="40" ><a href="HotelList.action">호텔리스트[전체보기]</a></td>
						<td width = "100">[인기순]</td>
						<td width = "100">[가격순]</td>
						<td width = "100">[별점순]</td>
					</tr>
					<s:if test="Hotellist.size() <= 0">
						<tr>
							<td colspan=7>
								<center>검색 내역이 없습니다.</center>
							</td>
						</tr>
					</s:if>
					<s:iterator value="Hotellist" status="stat">
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
							<td colspan="2">\ <s:property value="price" /> 원 / 1박<br>최대 <s:property value="maxnum" /> 명</td>
							<td><s:property value="grade" /></td>
						</tr>
					</s:iterator>
					<tr align="center">
						<td colspan="7"><s:property value="pagingHtml" escape="false" /></td>
					</tr>
				</table>
			</div>
		</div>
	</div>

</body>
</html>