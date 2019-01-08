<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<link rel="stylesheet"  href="item/tour/tt2.css"  type="text/css">
<script>
	$(function() {
		$(".subb").hide();
		$("div.sideMenu").click(function() {
			if ($(this).next().css("display") == "none")
				$(".subb").slideUp("fast");
			$(this).next().slideToggle("fast");
		})
	})

	function searchT_check() {
		document.search_T.submit();
	}
</script>
</head>
<body>
	<div id=tuor_body>
		<div id="tuor_side">
			<div id=side>
			     <form id="Tsearch">
						<div id="search_bar">
							<input type="text" name="tourname"
								placeholder="상품을 검색해보세요" />
							<button>검색</button>
							
						</div>
					</form>
					<br>
			     <b>CATEGORY</b>
			     <hr>
				<div><a href="TourList.action" class="on"><font color="#1b5ac2"><b>전체</b></font></a></div>
				<hr>
				<div class="sideMenu"><b>한국</b></div>
				<ul class="subb">
					<li><a href="TourList.action?tourname=제주도" class="on">제주도</a></li>
				</ul>
				<hr>
				<div class="sideMenu"><b>일본</b></div>
				<ul class="subb">
					<li><a href="TourList.action?tourname=오사카" class="on">오사카</a></li>
					<li><a href="TourList.action?tourname=교토" class="on">교토</a></li>
				</ul>
				<hr>
				<div class="sideMenu"><b>미국</b></div>
				<ul class="subb">
					<li><a href="TourList.action?tourname=뉴욕" class="on">뉴욕</a></li>
				</ul>
				<hr>
				<div class="sideMenu"><b>프랑스</b></div>
				<ul class="subb">
					<li><a href="TourList.action?tourname=파리" class="on">파리</a></li>
				</ul>
				<hr>
				<div class="sideMenu"><b>스페인</b></div>
				<ul class="subb">
					<li><a href="TourList.action?tourname=세비야" class="on">세비야</a></li>
				</ul>
				<hr>
				<div class="sideMenu"><b>쿠바</b></div>
				<ul class="subb">
					<li><a href="TourList.action?tourname=아바나" class="on">아바나</a></li>
				</ul>
				<hr>
			</div>
		</div>
		<div id=tourList>
			<dl>
				<dt>
					<form name="search_T">
						<div id="ggg">
						<b>전체</b>
							<select name="num" onchange="searchT_check()">
								<s:if test="num == 1 ">
									<option value="1" selected>인기순</option>
									<option value="2">가격낮은순</option>
								</s:if>
								<s:elseif test="num == 2 ">
									<option value="1">인기순</option>
									<option value="2" selected>가격낮은순</option>
								</s:elseif>
								<s:else>
									<option value="1">인기순</option>
									<option value="2">가격낮은순</option>
								</s:else>
							</select>
							<s:hidden name="tourname" value="%{tourname}" />
						</div>
					</form>
					<hr>
				</dt>
				<br>
				<dd>
					<ul>
						<s:iterator value="Tourlist" status="stat">
							<a href="TourView.action?no=<s:property value="%{no}" />&currentPage=<s:property value="%{currentPage}"/>">
								<div id="contents">
									<div id=imageT>
										<s:if test="main_image != null">
											<img src="/TMT/upload/tour/<s:property value="%{main_image}" />">
										</s:if>
										<s:else>
											<img src="/TMT/images/noimage.jpg">
										</s:else>
									</div>
									<div id="contentT" style="" >
										<h4>
											
											<s:property value="name" />
										</h4>
										<font color="orange" size="5"><b><s:property
													value="price" />원</b></font> / 1인<br>
									</div>
								</div>
							</a>
						</s:iterator>	
						
					</ul>
				</dd>
			</dl>
			<div id="a"><center><s:property value="pagingHtml" escape="false" /></center></div>
		</div>
		
	</div>
	
</body>
</html>