<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<link rel="stylesheet"  href="item/tour/tt3.css"  type="text/css">
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
				<!-- 카테고리 -->
				<s:iterator value="counList" status="a">
				<div class="sideMenu"><b><s:property value="%{counList[#a.index].country}"/></b></div>
				<ul class="subb">
					<s:iterator value="regionList" status="b">
						<s:if test="%{counList[#a.index].country == country}"> 
						<li><a href="TourList.action?tourname=<s:property value="%{region}"/>" class="on"><s:property value="%{regionList[#b.index].region}"/></a></li>
						</s:if>
					</s:iterator>
				</ul>
				<hr>
				</s:iterator>
				<!-- /카테고리 -->
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
									<option value="3">가격높은순</option>
								</s:if>
								<s:elseif test="num == 2 ">
									<option value="1">인기순</option>
									<option value="2" selected>가격낮은순</option>
									<option value="3">가격높은순</option>
								</s:elseif>
								<s:else>
									<option value="1">인기순</option>
									<option value="2">가격낮은순</option>
									<option value="3">가격높은순</option>
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
									<div id="contentT">
									    <s:if test="amount == 0">
									        <br>
						    				<img src="/TMT/images/watch.png" width="20" height="20"><font color="#e30413"> &nbsp;<b>sorry! 상품이 모두 예약되었습니다.</b></font><br>
						    				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>다른 상품을 이용해주세요.</b>
						    				<br><br>
						    				<div id="gogo">
						    				<font color="#1b5ac2"><b>상품 문의로 이동하기</b></font>
						    				</div>
					      			 	 </s:if>
					      			 	 <s:else>
											<h4>
												<s:property value="name" />
											</h4>
											<font color="orange" size="5"><b><s:property
													value="price" />원</b></font> / 1인<br>
									     </s:else>
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