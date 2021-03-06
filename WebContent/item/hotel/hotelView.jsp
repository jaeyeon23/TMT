<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<!-- 달력 관련-->
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<!-- datepicker 한국어로 -->
	<script	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
   <%--  <script language="JavaScript" src="/TMT/item/hotel/hotelscript3.js"></script> --%>
<!-- 달력끝 -->
<link rel="stylesheet" media="screen" href="css/admin/view1.css" />
<link rel="stylesheet" media="all" href="css/admin/view2.css" />
<link rel="stylesheet" media="screen" href="css/admin/view3.css" />
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<script>
	$(function() {
		$(".subb").hide();
		$("div.sideMenu").click(function() {
			if ($(this).next().css("display") == "none")
				$(".subb").slideUp("fast");
			$(this).next().slideToggle("fast");
		})
	})

	function check() {
		if (document.HsearchForm.roomnum.value > <s:property value="%{resultClass.room}"/> ) {
			alert("예약가능한 객실수를 초과했습니다. 다시선택해주세요.");
			document.HsearchForm.roomnum.focus();
			return false;
		}
		
		if (document.HsearchForm.inDay.value == "") {
			alert("체크인날짜를 선택해주세요.");
			document.HsearchForm.inDay.focus();
			return false;
		}

		if (document.HsearchForm.outDay.value == "") {
			alert("체크아웃 날짜를 선택해주세요");
			document.HsearchForm.outDay.focus();
			return false;
		}
		if (document.HsearchForm.outDay.value > "<s:property value='%{resultClass.checkout}'/>" ) {
			alert("예약가능일을 초과하였습니다. 다시선택해주세요.");
			document.HsearchForm.outDay.focus();
			return false;
		}
		if (document.HsearchForm.inDay.value < "<s:property value='%{resultClass.checkin}'/>" ) {
			alert("예약가능한 시작일이 아닙니다. 다시선택해주세요.");
			document.HsearchForm.inDay.focus();
			return false;
		}
		
		if (document.HsearchForm.inDay.value == document.HsearchForm.outDay.value ) {
			alert("1박 이상 선택하셔야합니다. 다시선택해주세요.");
			document.HsearchForm.outDay.focus();
			return false;
		}
	}
	function checkC(){
		var f=document.com;
		if (f.c_content.value == "") {
			alert("내용을 입력해주십시오");
			f.c_content.focus();
			return false;
		}
	}
	
	
	
	$(function() {
		//datepicker 한국어로 사용하기 위한 언어설정
		$.datepicker.setDefaults($.datepicker.regional['ko']);

		// 시작일(inDay)은 종료일(outDay) 이후 날짜 선택 불가
		// 종료일(outDay)은 시작일(inDay) 이전 날짜 선택 불가
		//시작일.
		$('#inDay').datepicker({
			showOn : "both", // 달력을 표시할 타이밍 (both: focus or button)
			buttonImage : "/TMT/images/calendar.gif", // 버튼 이미지
			buttonImageOnly : true, // 버튼 이미지만 표시할지 여부
			dateFormat : "yy-mm-dd", // 날짜의 형식
			changeMonth : true, // 월을 이동하기 위한 선택상자 표시여부
			minDate: "<s:property value='%{resultClass.checkin}'/>",    // 선택할수있는 최소날짜,
			maxDate:"<s:property value='%{resultClass.checkout}'/>",
			onClose : function(selectedDate) {
				// 시작일(fromDate) datepicker가 닫힐때
				// 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
				$("#outDay").datepicker("option", "minDate", selectedDate);
				$("#outDay").datepicker("option", "maxDate", "<s:property value='%{resultClass.checkout}'/>");
			}
		});

		//종료일
		$('#outDay').datepicker({
			showOn : "both",
			buttonImage : "/TMT/images/calendar.gif",
			buttonImageOnly : true,
			dateFormat : "yy-mm-dd",
			changeMonth : true,
			minDate: 0, // 오늘 이전 날짜 선택 불가
			onClose : function(selectedDate) {
				// 종료일(toDate) datepicker가 닫힐때
				// 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
				$("#inDay").datepicker("option", "maxDate", selectedDate);
			}
		});
	});

	
</script>
<style>
.sidebar {
  position: -webkit-sticky;
  position: sticky;
  top: 80px;
}

#Hsearch2 input[type="submit"] {
    width: 100%;
    margin-top: 30px;
    height: 40px;
}
#Hsearch2 input[type="text"]{
	height: 38px;
	border:1px solid #BBBBBB;
	border-radius: 5px 5px 5px 5px ;
}


#right_btn{
   margin-top: 2%;
   float: right;
}
#Hsearch2 select{
	width:120px;
	height: 38px;
	display:inline;
	text-align: center;
	border:1px solid #BBBBBB;
	
}
img.ui-datepicker-trigger {
	margin-left: 5px;
	vertical-align: middle; 
	cursor: pointer;
	width: 35px;
	height: 40px;
}

</style>
</head>

<body>
	<div class="resp-container">
		<div class="resp-container--row ">
			<div class="OfferDetail">
				<s:if test="%{resultClass.room != 0 || resultClass.checkout > nowDate}">
				<!-- side -->
				<div class="sidebar">
					<div data-margin-top="80" class="offer__side selector" style="">
						<div class="offer__side__main-box">
							<div class="offer__side__main-box--body">
								<div class="offer__side__main-box__price">	
									<p class="offer__side__main-box__price--main"><s:property value="%{resultClass.price}"/>
										<span class="offer__side__main-box__price--won">원(1박)</span>
										<span class="offer__side__main-box__price--infoRight">/ 남은방:<s:property value="%{resultClass.room}"/></span>
									</p>
								</div>
								<div class="offer__side__main-box__share-wrapper " role="button" tabindex="-1">
									<img class="offer__side__main-box__share-icon" src="/TMT/images/admin/share.svg" alt="share-icon" role="button" tabindex="-1">
										<div class="Popover  right-reverse "></div>
								</div>
								
							<div id = "check_all" >	
							<s:if test="%{session.session_id==null}">
							            <div>로그인 하셔야 예약이 가능합니다</div>
										<a href="LoginForm.action">
			                     		  <button type="button" class="app-button app-button__type--primary app-button__size--l">로그인하기</button>
			                   			</a>
						    </s:if>	
						    <s:else>						
							<form id="Hsearch2" name="HsearchForm" onsubmit="return check()" action="HotelCheck.action">
								<s:hidden name="no" value="%{no}" />
								<s:hidden name="name" value="%{resultClass.name}" />
								<s:hidden name="price" value="%{resultClass.price}" />  <!-- 가격 -->
								<s:hidden name="content" value="%{resultClass.content}" />
								<s:hidden name="country" value="%{resultClass.country}" />  <!-- 국가 -->
								<s:hidden name="region" value="%{resultClass.region}" />  <!-- 지역 -->
								<s:hidden name="image1" value="%{resultClass.main_image}" />  <!-- 이미지 -->
								<s:hidden name="tel" value="%{resultClass.tel}" />  <!-- 전화번호 -->
								
								
							   	 <b>&nbsp;&nbsp;체크인</b><br>
								 <input type="text" size="23" name="inDay" id="inDay" readonly placeholder="체크인"><br>
								<b>&nbsp;&nbsp;체크아웃</b><br>
								<input type="text" size="23" name="outDay" id="outDay" readonly	placeholder="체크아웃"> <br>
								<b>&nbsp;&nbsp;인원 및 객실</b><br>
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
								
								<input type="submit" class="app-button app-button__type--primary app-button__size--l" value="예약 하기">
								
							</form>
							<form action="InsertBasket.action" method="get">
								<button type="submit" class="app-button app-button__type--outline app-button__size--m">
									<img src="/TMT/images/admin/heart.svg" alt="wishlist" style="width: 24px; height: 24px; margin-right: 4px;">위시리스트<img src="/TMT/images/admin/heart.svg" alt="wishlist" style="width: 24px; height: 24px; margin-right: 4px;">
									<s:hidden name="no" value="%{resultClass.no}"/>
									<s:hidden name="name" value="%{resultClass.name}"/>
									<s:hidden name="price" value="%{resultClass.price}"/>
									<s:hidden name="country" value="%{resultClass.country}"/>
									<s:hidden name="region" value="%{resultClass.region}"/>
									<s:hidden name="image1" value="%{resultClass.main_image}"/><!-- <s:hidden name="image1" value="%{resultClass.image1}"/> -->
									<s:hidden name="id" value="%{session.session_id}"/>
									<s:hidden name="type" value="2"/>
								</button>
							</form>
							
							</s:else>
							</div>
							
							</div>
						</div>
					</div>
				</div>
				</s:if>
				<!-- /side -->
				<!-- offer container-->
				<div class="offer-container">
					<!-- main -->
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
								<s:if test="%{resultClass.room != 0 || resultClass.checkout > nowDate}">
								<div class="starRating starRating--m starRating--blue starRating--">
								<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
								</div>
							</div>	
							<div class="offer-container__inner-bar__price">
								<p class="offer-container__inner-bar__price--content">
								    <center>예약가능일</center>
									<p class="offer-container__inner-bar__price--main">
										<s:property value="%{resultClass.checkin}"/> ~ <s:property value="%{resultClass.checkout}"/>
									</p>	
								</p>
							</div>
						</div>
							<s:iterator value="imageList" status="stat">
								<div class="offer-container__introduction--wrapper">
									<img class="offer-container__introduction__image" src="<s:property value="imageList[#stat.index]"/>" alt="introduction">
								</div>
							</s:iterator>
						<div class="with-more " style="max-height: 250px;">
							<div class="offer-container__service">
								<p class="offer-container__service--content"><s:property value="%{resultClass.content}"/></p>
							</div>
						</div>
					</div>
					</s:if>
					<!-- /main -->
				</div>
				
				<!-- /offer container-->
				<hr>
				<!-- review -->
				<div class="offer-review" id="review">
					<!-- reviewWrite -->
					
					<div class="offer-review__header">
						<h4 class="offer-review__header__title">문의<span><s:property value="%{totalCount}"/></span></h4>
					</div>
					<s:if test="%{session.session_id!=null}">
					<div class="offer-review__detail-info">
						<form action="HotelComment.action" name="com"> <!-- method="post" -->
							<div class="form-group">
								<textarea class="form-control" rows="4" placeholder="내용" name="c_content" style="resize : none;"></textarea>
								<div id="right_btn">
								<input class="app-button app-button__type--primary app-button__size--s" onclick="return checkC()" type="submit" value="작성" >
								</div>
								<input type="hidden" name="currentPage" value="<s:property value="currentPage"/>">
								<input type="hidden" name="hotel_no" value="<s:property value="no"/>">
								<input type="hidden" name="currentPageC" value="<s:property value="currentPageC"/>">
								<input type="hidden" name="c_id" value="<s:property value="%{session.session_id}"/>">
							</div>
						</form>
					</div>
					<div class="clear"></div>
					</s:if>
					<!-- /reviewWrite -->
					<hr>
					<!-- reviewList -->
					<div class="offer-review__list">
						<s:iterator value="cList" status="stat">
							<s:if test="c_re_step < 1">
							<div class="offer-review__list--content">
								<div class="starRating starRating--m starRating--blue starRating--"></div>
								<p class="offer-review__list--writer"><font size="4" color="#51abf3"><b>Q.</b></font>&nbsp;&nbsp;<s:property value="c_id"/><p>
								<p class="offer-review__list--purpose" style="text-align:right; margin-right:2%; margin-top: -6.5%;" ><s:property value="c_reg_date"/></p>
								<p class="offer-review__list--message">
								<div class="with-more " style="max-height: 100px; margin-left: 5.5%; margin-right: 5%;" ><s:property value="c_content"/></div>
								<s:if test="%{session.session_id==c_id}">
								<div align="right">
									<form action="HotelCDelete.action">
										<input class="app-button app-button__type--outline app-button__size--s" type="submit" value="삭제">
										<input type="hidden" name="no" value="<s:property value="hotel_no"/>">
										<input type="hidden" name="c_ref" value="<s:property value="c_ref"/>">
										<input type="hidden" name="currentPage" value="<s:property value="currentPage"/>">
									</form>
								</div>
								</s:if>
								</p>
							</div>
							</s:if>
							<!-- reply -->
							<s:else>
							<div class="offer-review__reply">
									<img class="offer-review__reply--icon" src="/TMT/images/admin/reply.svg" alt="reply">
								<p class="offer-review__reply--guide"><font size="4" color="#1b5ac2"><b>A.</b></font> <s:property value="c_id"/></p>
								<p style="margin-left: 7%; margin-right: 7%;" class="offer-review__reply--message"><s:property value="c_content"/></p>
							</div>
							</s:else>
							<hr>
						</s:iterator>
						<!-- <div class="offer-review--more" style=""><button type="button" class="app-button app-button__type--outline app-button__size--m">후기 더 보기</button></div> -->
					</div>
					<!-- /reviewList -->
					
				</div>
				<!-- /review -->
			</div>
			<div align="center"><s:property value="pagingHtml" escape="false"/></div>
			<!-- /offerDetail-->
		</div>
	</div>
</body>
</html>

		
