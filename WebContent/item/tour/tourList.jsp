<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/TMT/item/tour/tourcss.css" type="text/css">
<style></style>
</head>
<body>
	<div id=tuor_body>
		<div id=sideBar>
			<div id=sideMenu>
				<h1>
					<b>지역별</b>
					<hr>
				</h1>
				
					<li><a href="TourList.action" class="on">전체</a></li>
					<hr>
					<li><a href="TourList.action?r=1" class="on">지역1</a></li>
					<hr>
					<li><a href="TourList.action?r=2" class="on">지역2</a></li>
					<hr>
					<li><a href="TourList.action?r=3" class="on">지역3</a></li>
					<hr>
					<li><a href="TourList.action?r=4" class="on">지역4</a></li>
					<hr>
				
			</div>
		</div>
		<div id=tourList>
			<div id="contents">
				<dl>
					<dt>
						<form id="Tsearch">
							<input type="text" size="60" name="tourname" placeholder=" 여행지,장소,상품을 검색해보세요" />
						</form>
					</dt>
					<dd>
						<ul>
							<li><img src="/TMT/images/noimage.jpg" width="300" height="250">
								<h4>
									<center>
									상세설명이들어갈자리
									</center>
								</h4>
							</li>
						</ul>
					</dd>
				</dl>
			</div>
		</div>
	</div>

	--쿼리용
<div>
	<div>
	<table width="600" border="0" cellspacing="0" cellpadding="2">
		<tr align="center" bgcolor="#F3F3F3">
			<td width="50"><strong>번호</strong></td>
			<td width="350"><strong>상품명</strong></td>
			<td width="70"><strong>가격</strong></td>
			<td width="80"><strong>내용</strong></td>
			<td width="50"><strong>국가</strong></td>
			<td width="50"><strong>지역</strong></td>
			<td width="50"><strong>조회수</strong></td>
			<td width="50"><strong>이1</strong></td>
			<td width="50"><strong>이2</strong></td>
			<td width="50"><strong>이3</strong></td>
			<td width="50"><strong>등록일</strong></td>
			<td width="50"><strong>평균 별점</strong></td>
		</tr>
		

		<s:iterator value="Tourlist" status="stat">
			<tr bgcolor="#FFFFFF" align="center">
				<td><s:property value="no" /></td>
				<td><s:property value="name" /></td>
				<td><s:property value="price" /></td>
				<td><s:property value="content" /></td>
				<td><s:property value="country" /></td>
				<td><s:property value="region" /></td>
				<td><s:property value="readcount" /></td>
				<td><s:property value="image1" /></td>
				<td><s:property value="image2" /></td>
				<td><s:property value="umage3" /></td>
				<td><s:property value="reg_date" /></td>
				<td><s:property value="grade" /></td>
			</tr>
		</s:iterator>
		<tr align="center">
		<td colspan="5"><s:property value="pagingHtml" escape="false"/></td>
	</tr>
		
	</table>
	</div>
	</div>
	
	
	<!-- <div class="lnb" id="destLeftMenu">
			<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
			<br /> <br /> <br /> <br /> <br />
			<h1 class="bigTitle">
				<b>지역별</b>
			</h1>
			<ul id="destSpotTypeList">
				<br />
				<br />
				<br />
				<li><a href="ListItem.action" class="on">전체</a></li>
				<li><a href="ListItem.action?r=1" class="on">서울</a></li>
				<li><a href="ListItem.action?r=2" class="on">부산</a></li>
				<li><a href="ListItem.action?r=3" class="on">전주</a></li>
				<li><a href="ListItem.action?r=4" class="on">경주</a></li>
				<li><a href="ListItem.action?r=5" class="on">제주</a></li>
				<li><a href="ListItem.action?r=6" class="on">강원</a></li>
			</ul>
			<br /> <br /> <br />

		</div> -->
</body>
</html>