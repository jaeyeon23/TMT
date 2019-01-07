<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <link rel="stylesheet" href="./css/main/main1.css"/>
</head>

<body>
    <div id=wrap>
        <center>
        	<form action="MainSearch.action">
	        	<div class="search_background">
	        		<div id="carousel-example-generic" class="carousel slide carousel-fade" data-ride="carousel" data-interval="5000">
						<!-- Indicators -->
						<!-- <ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol> -->
				
						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item item active">
								<img src="https://d2ur7st6jjikze.cloudfront.net/cms/244_original_1525399192.jpg?1525399192" alt="...">
							</div>
							<div class="item carousel-item">
								<img src="https://d2ur7st6jjikze.cloudfront.net/cms/246_original_1525399121.jpg?1525399121" alt="...">
							</div>
							<div class="item carousel-item">
								<img src="https://d2ur7st6jjikze.cloudfront.net/cms/255_original_1525399124.jpg?1525399124" alt="...">
							</div>
						</div>
					</div>
	        		<div class="searchbox_text">
	        			전 세계 17,500개가 넘는<br>투어&amp;티켓을 만나보세요.<br>
	        			<input type="text" name="searchbox" class="searchbox" placeholder="지역을 검색하세요">
	        		</div>
	        	</div>
        	</form>



				<div class='experience__summary'>
					<div class='summary__item'>
						<img alt='experience-product' class='summary__image'
							src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/experience/ic-tnt-feature-products-599e6e539e3d533485af3529599282548c372498a0541251788f61aaab466b38.svg'>
						<div class='summary__content'>
							<div class='summary__content__title'>전 세계 투어&amp;티켓 예약</div>
							<div class='summary__content__desc'>가이드 투어부터 교통 패스까지!</div>
						</div>
					</div>

					<div class='summary__item'>
						<img alt='experience-product' class='summary__image'
							src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/experience/ic-tnt-feature-reviews-2f0586217b23a1a2b518cb59daec89b8dcad44d8881de8a7031545202dcc3306.svg'>
						<div class='summary__content'>
							<div class='summary__content__title'>최신 여행 후기</div>
							<div class='summary__content__desc'>직접 다녀온 여행자가 남긴 후기</div>
						</div>
					</div>

					<div class='summary__item'>
						<img alt='experience-product' class='summary__image'
							src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/experience/ic-tnt-feature-chat-22a5811f342cae4a8ff09372fcc21219e42de4f68339d8cb9f87dee0f151c61b.svg'>
						<div class='summary__content'>
							<div class='summary__content__title'>1:1 가이드 문의</div>
							<div class='summary__content__desc'>현지 가이드에게 직접 문의하기</div>
						</div>
					</div>
				</div>


					<div style="margin: 100pt 110pt; float:clear;">
						<h4 align="left" style="margin-left: 80pt;">
							<strong>지금 인기있는 여행지</strong>
						</h4>
						<br>

						<!-- test -->
						<div class="tabbable">
							<!-- 왼쪽과 오른쪽 탭에만 필요 -->
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tab1" data-toggle="tab">제주도</a></li>
								<li><a href="#tab2" data-toggle="tab">상하이</a></li>
								<li><a href="#tab3" data-toggle="tab">워싱턴</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="tab1">
									<s:iterator value="Tourlist_Jeju" status="stat">
										<a href="TourView.action?no=<s:property value="%{no}" />">
											<div id="contents">
												<div id=imageT>
													<s:if test="image1 != null">
														<img
															src="/TMT/upload/tour/<s:property value="%{image1}" />">
													</s:if>
													<s:else>
														<img src="/TMT/images/noimage.jpg">
													</s:else>
												</div>
												<div id=contentT>
													<h4>
														[
														<s:property value="region" />
														]
														<s:property value="name" />
													</h4>
													<font color="orange" size="5"><b><s:property
																value="price" />원</b></font> / 1인<br>
													<s:if test="grade == 0">
														<font color=#BDBDBD>★★★★★</font>
													</s:if>
													<s:elseif test="grade == 1">
														<font color="red">★</font>
														<font color="#BDBDBD">★★★★</font>
													</s:elseif>
													<s:elseif test="grade == 2">
														<font color="red">★★</font>
														<font color="#BDBDBD">★★★</font>
													</s:elseif>
													<s:elseif test="grade == 3">
														<font color="red">★★★</font>
														<font color="#BDBDBD">★★</font>
													</s:elseif>
													<s:elseif test="grade == 4">
														<font color="red">★★★★</font>
														<font color="#BDBDBD">★★★★★</font>
													</s:elseif>
													<s:elseif test="grade == 5">
														<font color="red">★★★★★</font>
													</s:elseif>
												</div>
											</div>
										</a>
									</s:iterator>
								</div>
								<div class="tab-pane" id="tab2">
									<s:iterator value="Tourlist_Sanghai" status="stat">
										<a href="TourView.action?no=<s:property value="%{no}" />">
											<div id="contents">
												<div id=imageT>
													<s:if test="image1 != null">
														<img
															src="/TMT/upload/tour/<s:property value="%{image1}" />">
													</s:if>
													<s:else>
														<img src="/TMT/images/noimage.jpg">
													</s:else>
												</div>
												<div id=contentT>
													<h4>
														[
														<s:property value="region" />
														]
														<s:property value="name" />
													</h4>
													<font color="orange" size="5"><b><s:property
																value="price" />원</b></font> / 1인<br>
													<s:if test="grade == 0">
														<font color=#BDBDBD>★★★★★</font>
													</s:if>
													<s:elseif test="grade == 1">
														<font color="red">★</font>
														<font color="#BDBDBD">★★★★</font>
													</s:elseif>
													<s:elseif test="grade == 2">
														<font color="red">★★</font>
														<font color="#BDBDBD">★★★</font>
													</s:elseif>
													<s:elseif test="grade == 3">
														<font color="red">★★★</font>
														<font color="#BDBDBD">★★</font>
													</s:elseif>
													<s:elseif test="grade == 4">
														<font color="red">★★★★</font>
														<font color="#BDBDBD">★★★★★</font>
													</s:elseif>
													<s:elseif test="grade == 5">
														<font color="red">★★★★★</font>
													</s:elseif>
												</div>
											</div>
										</a>
									</s:iterator>
								</div>
								<div class="tab-pane" id="tab3">
									<s:iterator value="Tourlist_Washington" status="stat">
										<a href="TourView.action?no=<s:property value="%{no}" />">
											<div id="contents">
												<div id=imageT>
													<s:if test="image1 != null">
														<img
															src="/TMT/upload/tour/<s:property value="%{image1}" />">
													</s:if>
													<s:else>
														<img src="/TMT/images/noimage.jpg">
													</s:else>
												</div>
												<div id=contentT>
													<h4>
														[
														<s:property value="region" />
														]
														<s:property value="name" />
													</h4>
													<font color="orange" size="5"><b><s:property
																value="price" />원</b></font> / 1인<br>
													<s:if test="grade == 0">
														<font color=#BDBDBD>★★★★★</font>
													</s:if>
													<s:elseif test="grade == 1">
														<font color="red">★</font>
														<font color="#BDBDBD">★★★★</font>
													</s:elseif>
													<s:elseif test="grade == 2">
														<font color="red">★★</font>
														<font color="#BDBDBD">★★★</font>
													</s:elseif>
													<s:elseif test="grade == 3">
														<font color="red">★★★</font>
														<font color="#BDBDBD">★★</font>
													</s:elseif>
													<s:elseif test="grade == 4">
														<font color="red">★★★★</font>
														<font color="#BDBDBD">★★★★★</font>
													</s:elseif>
													<s:elseif test="grade == 5">
														<font color="red">★★★★★</font>
													</s:elseif>
												</div>
											</div>
										</a>
									</s:iterator>
								</div>
							</div>
						</div>


					</div>
					<%--    	<!-- Test -->
        	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
			  	<ol class="carousel-indicators">
			    	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    	<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    	<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			  	</ol>
			
			  	<!-- Wrapper for slides -->
			  	<div class="carousel-inner" role="listbox">
			    	<div class="item active">
			      		<img src="https://d2ur7st6jjikze.cloudfront.net/cms/244_original_1525399192.jpg?1525399192" alt="...">
			      		<div class="carousel-caption">
			        		...
			      		</div>
			    	</div>
			    	<div class="item">
			      		<img src="https://d2ur7st6jjikze.cloudfront.net/cms/246_original_1525399121.jpg?1525399121" alt="...">
			      		<div class="carousel-caption">
			        		...
			      		</div>
			    	</div>
			    	<div class="item">
			      		<img src="https://d2ur7st6jjikze.cloudfront.net/cms/255_original_1525399124.jpg?1525399124" alt="...">
			      		<div class="carousel-caption">
			        		...
			      		</div>
			    	</div>
			    	...
			  	</div>
			
			  	<!-- Controls -->
			  	<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			    	<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			    	<span class="sr-only">Previous</span>
			  	</a>
			  	<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			    	<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			    	<span class="sr-only">Next</span>
			  	</a>
			</div>
        	
        	
        	
        	
        	<div>
        		투어&티켓
        	</div>
        	
        	<div>
        		항공권
        	</div>
        	
        	<div>
        		숙소
        	</div> --%>
		</center>
    </div>
</body>
</html>