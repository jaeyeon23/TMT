<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" media="screen" href="css/admin/view1.css" />
<link rel="stylesheet" media="all" href="css/admin/view2.css" />
<link rel="stylesheet" media="screen" href="css/admin/view3.css" />


<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">

<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>

<script>
$(function() 
		{
			$(".subb").hide();
			$("div.sideMenu").click(function() 
			{
				if($(this).next().css("display")=="none")
					$(".subb").slideUp("fast");
				 $(this).next().slideToggle("fast"); 
			})
		})		
</script>

<style>
.sidebar {
  position: -webkit-sticky;
  position: sticky;
  top: 80px;
}
</style>
</head>
<body>
	<div class="resp-container">
		<div class="resp-container--row ">
			<div class="OfferDetail">
				<!-- side -->
				<div class="sidebar">
					<div data-margin-top="80" class="offer__side selector" style="">
						<div class="offer__side__main-box">
							<div class="offer__side__main-box--body">
								<div class="offer__side__main-box__price">	
									<p class="offer__side__main-box__price--main"><s:property value="%{resultClass.price}"/>
										<span class="offer__side__main-box__price--won">원</span>
									</p>
								</div>
								<div class="offer__side__main-box__share-wrapper " role="button" tabindex="-1">
									<img class="offer__side__main-box__share-icon" src="/TMT/images/admin/share.svg" alt="share-icon" role="button" tabindex="-1">
										<div class="Popover  right-reverse "></div>
								</div>
								<a href="AdminTourModifyForm.action?no=<s:property value="no"/>&currentPage=<s:property value="currentPage"/>">
									<button type="button" class="app-button app-button__type--primary app-button__size--l">수정</button>
								</a>
								<div class="offer__side__main-box__instant">
									<div class="wish-button">
										<button type="button" class="app-button app-button__type--outline app-button__size--m" onclick="javascript:location.href='AdminTourDelete.action?no=<s:property value="no"/>'">
											<img src="/TMT/images/admin/heart.svg" alt="wishlist" style="width: 24px; height: 24px; margin-right: 4px;">삭제<img src="/TMT/images/admin/heart.svg" alt="wishlist" style="width: 24px; height: 24px; margin-right: 4px;"></button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
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
									</p>
								</div>
								<div class="starRating starRating--m starRating--blue starRating--">
								<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
								</div>
							</div>	
							<div class="offer-container__inner-bar__price">
								<p class="offer-container__inner-bar__price--content">
									<p class="offer-container__inner-bar__price--main">
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
					<div class="offer-review__detail-info">
						<form action="AdminTourComment.action"> <!-- method="post" -->
							<div class="form-group">
								<textarea class="form-control" rows="4" placeholder="내용" name="c_content"></textarea>
								<input class="btn btn-default" type="submit" value="작성">
								<input type="hidden" name="currentPage" value="<s:property value="currentPage"/>">
								<input type="hidden" name="tour_no" value="<s:property value="no"/>">
								<input type="hidden" name="currentPageC" value="<s:property value="currentPageC"/>">
								<input type="hidden" name="c_id" value="<s:property value="%{session.session_id}"/>">
							</div>
						</form>
					</div>
					<div class="clear"></div>
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
								<div class="with-more " style="max-height: 100px; margin-left: 5%; margin-right: 5%;" ><s:property value="c_content"/></div>
								<div align="right">
									<form action="AdminTourCDelete.action">
										<input class="btn btn-default btn-xs" type="submit" value="삭제">
										<input type="hidden" name="no" value="<s:property value="tour_no"/>">
										<input type="hidden" name="c_ref" value="<s:property value="c_ref"/>">
										<input type="hidden" name="currentPage" value="<s:property value="currentPage"/>">
									</form>
								</div>
								<div class="sideMenu" align="right">
									<input type="button" class="btn btn-default btn-xs" value="답글">
								</div>
								<div class="subb">
									<form action="AdminTourComment.action"> <!-- method="post" -->
										<div class="form-group">
											<textarea class="form-control" rows="4" placeholder="내용" name="c_content"></textarea>
											<input type="submit" value="작성" class="btn btn-default btn-xs">
											<input type="hidden" name="currentPage" value="<s:property value="currentPage"/>">
											<input type="hidden" name="c_no" value="<s:property value="c_no"/>">
											<input type="hidden" name="tour_no" value="<s:property value="no"/>">
											<input type="hidden" name="c_ref" value="<s:property value="c_ref"/>">
											<input type="hidden" name="c_re_step" value="<s:property value="c_re_step"/>">
											<input type="hidden" name="c_re_level" value="<s:property value="c_re_level"/>">
											<input type="hidden" name="currentPageC" value="<s:property value="currentPageC"/>">
											<input type="hidden" name="c_id" value="관리자">
										</div>
									</form>
								</div>
								</p>
							</div>
							</s:if>
							<!-- reply -->
							<s:else>
							<div class="offer-review__reply">
								<img class="offer-review__reply--icon" src="/TMT/images/admin/reply.svg" alt="reply">
								<p class="offer-review__reply--guide"><font size="4" color="#1b5ac2"><b>A.</b></font><s:property value="c_id"/></p>
								<p style="margin-left: 7%; margin-right: 7%;" class="offer-review__reply--message"><s:property value="c_content"/></p>
								<div align="right">
									<form action="AdminTourCDelete.action">
										<input class="btn btn-default btn-xs" type="submit" value="삭제">
										<input type="hidden" name="no" value="<s:property value="tour_no"/>">
										<input type="hidden" name="c_no" value="<s:property value="c_no"/>">
										<input type="hidden" name="currentPage" value="<s:property value="currentPage"/>">
									</form>
								</div>
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

		
