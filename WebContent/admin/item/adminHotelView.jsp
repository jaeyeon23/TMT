<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.offer-container__inner-bar {
    line-height: 1;
    margin-bottom: 32px
}

.resp-container {
    width: 100%
}
.offer-container__main {
    width: 700px;
    margin-top: 48px
}
.offer-container__inner-bar__price--mobile-wrapper {
    display: inline-block
}

.header2{font-weight: 700;
    line-height: 1.25;
    color: #343a40;
    margin-bottom: 8px;
    font-size: 32px}
    
#body2{background-color: blue;width:1200px;height:1000px;}

.offer-container__inner-bar__price {
    width: 50%;
    float: right;
    display: inline-block
}

.resp-container--row {
    margin: 0 auto;
    position: relative
}


</style>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<script src="js/bootstrap.js" type="text/javascript"></script>

</head>
<body>
<div class="resp-container">
	<div class="resp-container--row">
		<div class="offer-container__main">
			
			<div class="header2"><s:property value="%{resultClass.name}"/></div>
			
				
				<div class="offer-container__inner-bar">
					<div class="offer-container__inner-bar__price">
						<div class="offer-container__inner-bar__price--mobile-wrapper"><s:property value="%{resultClass.price}"/></div>
					</div>
			</div><!-- main -->
			
			
		</div>
	</div>
</div>



<%-- <div id="Offer-react-component-787d342d-e264-49ed-8d7c-ce7c45122709">
<div>

<div class="resp-container" style="top: 0px; bottom: 0px;">
<div class="resp-container--row "><div class="OfferDetail">
<div class="offer-container"><div class="offer-container__main">

	<div data-margin-top="80" class="offer__side selector" style="position: fixed; width: 296px; left: 790px; top: 80px;">
	<div class="offer__side__main-box">
	<div class="offer__side__main-box--body">
	<div class="offer__side__main-box__price">
	<p class="offer__side__main-box__price--main">
	<s:property value="%{resultClass.price}"/>
	<span class="offer__side__main-box__price--won">원</span>
	<span class="offer__side__main-box__price--infoRight">/1박</span>
	</p>
	</div>
	<div class="offer__side__main-box__share-wrapper " role="button" tabindex="-1">
	<img class="offer__side__main-box__share-icon" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNDk1MDU2IiBzdHJva2Utd2lkdGg9IjEuMjUiPgogICAgICAgIDxjaXJjbGUgY3g9IjYuMjIyIiBjeT0iMTIiIHI9IjIuMjIyIi8+CiAgICAgICAgPGNpcmNsZSBjeD0iMTcuNDQ0IiBjeT0iNi4yMjIiIHI9IjIuMjIyIi8+CiAgICAgICAgPHBhdGggc3Ryb2tlLWxpbmVjYXA9InNxdWFyZSIgZD0iTTE0LjUgNy41bC01LjYxMSAyLjgzMyIvPgogICAgICAgIDxjaXJjbGUgY3g9IjE3LjQ0NCIgY3k9IjE3Ljc3OCIgcj0iMi4yMjIiIHRyYW5zZm9ybT0ibWF0cml4KDEgMCAwIC0xIDAgMzUuNTU2KSIvPgogICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIGQ9Ik0xNC41IDE2LjVsLTUuNjExLTIuODMzIi8+CiAgICA8L2c+Cjwvc3ZnPgo=" alt="share-icon" role="button" tabindex="-1"><div class="Popover  right-reverse  "></div>
	</div><a href="AddOrder.action?seq_no?no"><button type="button" class="app-button app-button__type--primary app-button__size--l">
	구매하기</button></a>
	<div class="offer__side__main-box__instant">
	<div class="wish-button">
	<button type="button" class="app-button app-button__type--outline app-button__size--m" onclick="javascript:location.href='InsertBasket.action?seq_no=no'" >
	위시리스트에 담기</button></div></div></div></div></div>
	


<div class="offer-container__special">
<div class="offer-container__special--price-guarantee">최저가 보장제</div></div>
<div class="offer-container__title"><s:property value="%{resultClass.name}"/></div>
<div class="offer-container__inner-bar" id="offer">
<div class="offer-container__inner-bar--wrapper">
<div class="offer-container__inner-bar--sub-wrapper">

<div class="offer-container__introduction">
<div class="offer-container__introduction--wrapper">
<img class="offer-container__introduction__image" src="https://d2ur7st6jjikze.cloudfront.net/offer_descriptive_images/35403/10634_medium_1530584987.jpg?1530584987" alt="introduction">
<img class="offer-container__introduction__image" src="https://d2ur7st6jjikze.cloudfront.net/offer_descriptive_images/35403/10635_medium_1538703177.jpg?1538703177" alt="introduction">
<div class="with-more " style="max-height: 250px;"><div class="offer-container__service">
<p class="offer-container__service--content"><s:property value="%{resultClass.content}"/></p>

</div></div></div></div></div></div></div></div></div></div></div></div></div></div>

 --%>

</body>
</html>

		
