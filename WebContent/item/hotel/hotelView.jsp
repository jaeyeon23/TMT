<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link href="admin/item/css/viewCss.css" rel="stylesheet"> -->
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/0.df77c9f5145a673a2605.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-5da62e3a802820a73815ac9769d004d04db514aa47276f57320c206cc043d2ac.css" />
<!-- <link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-14458f281f80aa09eab886cb439c5f5e9efe0517ecab85511c1da4725b552f6a.css" /> -->
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.df77c9f5145a673a2605.css" />
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<script src="js/bootstrap.js" type="text/javascript"></script>

</head>
<body>

	<div class="resp-container">
		<div class="resp-container--row ">
			<div class="OfferDetail">
			
				<div class="offer-container__main">
				
					<div class="offer-container__title"><s:property value="%{resultClass.name}"/></div>
					
					<div class="offer-container__inner-bar" id="offer">
					
						<div class="offer-container__inner-bar--wrapper">
							<div class="offer-container__inner-bar--sub-wrapper">
								<p class="offer-container__inner-bar--country">
									<s:property value="%{resultClass.country}"/> / <s:property value="%{resultClass.region}"/> 
									&nbsp;&nbsp;&nbsp;&nbsp; TEL.<s:property value="%{resultClass.tel}"/>
								</p>
							</div>
							<div class="starRating starRating--m starRating--blue starRating--">
							<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
							</div>
						</div>	
						
						
						<div class="offer-container__inner-bar__price">
							<p class="offer-container__inner-bar__price--content">
								<p class="offer-container__inner-bar__price--main">
									<s:property value="%{resultClass.checkin}"/> ~ <s:property value="%{resultClass.checkout}"/>
								</p>	
							</p>
						</div>
						
					</div>
					
					<s:iterator value="imageList" status="stat">
						<div class="offer-container__introduction--wrapper">
							<img class="offer-container__introduction__image" src="<s:property value="imageList[#stat.index]"/>" alt="introduction">
							<s:property value="imageList[#stat.index]"/>
						</div>
					</s:iterator>
					
					<div class="with-more " style="max-height: 250px;">
						<div class="offer-container__service">
							<p class="offer-container__service--content"><s:property value="%{resultClass.content}"/></p>
						</div>
					</div>
				</div><!-- main -->
				
				<div data-margin-top="80" class="offer__side selector" style="">
					<div class="offer__side__main-box">
						<div class="offer__side__main-box--body">
							<div class="offer__side__main-box__price">	
								<p class="offer__side__main-box__price--main"><s:property value="%{resultClass.price}"/>
									<span class="offer__side__main-box__price--won">원</span>
								</p>
							</div>
							<div class="offer__side__main-box__share-wrapper " role="button" tabindex="-1">
								<img class="offer__side__main-box__share-icon" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNDk1MDU2IiBzdHJva2Utd2lkdGg9IjEuMjUiPgogICAgICAgIDxjaXJjbGUgY3g9IjYuMjIyIiBjeT0iMTIiIHI9IjIuMjIyIi8+CiAgICAgICAgPGNpcmNsZSBjeD0iMTcuNDQ0IiBjeT0iNi4yMjIiIHI9IjIuMjIyIi8+CiAgICAgICAgPHBhdGggc3Ryb2tlLWxpbmVjYXA9InNxdWFyZSIgZD0iTTE0LjUgNy41bC01LjYxMSAyLjgzMyIvPgogICAgICAgIDxjaXJjbGUgY3g9IjE3LjQ0NCIgY3k9IjE3Ljc3OCIgcj0iMi4yMjIiIHRyYW5zZm9ybT0ibWF0cml4KDEgMCAwIC0xIDAgMzUuNTU2KSIvPgogICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIGQ9Ik0xNC41IDE2LjVsLTUuNjExLTIuODMzIi8+CiAgICA8L2c+Cjwvc3ZnPgo=" alt="share-icon" role="button" tabindex="-1">
									<div class="Popover  right-reverse "></div>
							</div>
							<a href="AddOrder.action?seq_no=<s:property value="no"/>">
								<button type="button" class="app-button app-button__type--primary app-button__size--l">구매하기</button>
							</a>
							<div class="offer__side__main-box__instant">
								<div class="wish-button">
									<button type="button" class="app-button app-button__type--outline app-button__size--m" onclick="javascript:location.href='InsertBasket.action?seq_no=<s:property value="no"/>'">
										<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjQ0VENERBIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K" alt="wishlist" style="width: 24px; height: 24px; margin-right: 4px;">위시리스트에 담기</button>
								</div>
							</div>
						</div>
					</div>
				</div><!-- side -->
				
			</div><!-- offer-->
		</div>
	</div>

</body>
</html>

		
