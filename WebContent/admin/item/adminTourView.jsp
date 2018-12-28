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
<%-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> --%>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
$(function(){
	$(".f").hide();
	$("#ff").click(function(){
		/* if($(this).next().css("display")=="none")
			$(".subb").slideUp("fast"); */
		 $(".f").slideToggle("fast"); 
	})
})

</script>

</head>
<body>

	<div class="resp-container">
		<div class="resp-container--row ">
			<div class="OfferDetail">
				<div class="offer-container">
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
								<s:property value="imageList[#stat.index]"/>
							</div>
						</s:iterator>
						
						<div class="with-more " style="max-height: 250px;">
							<div class="offer-container__service">
								<p class="offer-container__service--content"><s:property value="%{resultClass.content}"/></p>
							</div>
						</div>
					</div><!-- main -->
					
					<div data-margin-top="80" class="offer__side selector" style="position:fixed; margin-top:250pt;">
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
								<a href="AdminTourModifyForm.action?no=<s:property value="no"/>">
									<button type="button" class="app-button app-button__type--primary app-button__size--l">수정</button>
								</a>
								<div class="offer__side__main-box__instant">
									<div class="wish-button">
										<button type="button" class="app-button app-button__type--outline app-button__size--m" onclick="javascript:location.href='AdminTourDelete.action?no=<s:property value="no"/>'">
											<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjQ0VENERBIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K" alt="wishlist" style="width: 24px; height: 24px; margin-right: 4px;">삭제<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjQ0VENERBIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K" alt="wishlist" style="width: 24px; height: 24px; margin-right: 4px;"></button>
									</div>
								</div>
							</div>
						</div>
					</div><!-- side -->
				</div><!-- offer container-->
				<hr>
				<div class="offer-review" id="review">
					<div class="offer-review__header">
						<h4 class="offer-review__header__title">문의<span>168</span></h4>
					</div>
					
					<div class="offer-review__detail-info">
						<form action="TourComment.action"> <!-- method="post" -->
							<div class="form-group">
								<input class="form-control input-sm" name="c_id" type="text" placeholder="아이디" style="width:30%;">
								<textarea class="form-control" rows="4" placeholder="내용" name="c_content"></textarea>
								<input type="submit" value="작성" class="btn btn-default btn-xs">
								<input type="hidden" name="currentPage" value="<s:property value="currentPage"/>">
								<input type="hidden" name="tour_no" value="<s:property value="no"/>">
								<input type="hidden" name="currentPageC" value="<s:property value="currentPageC"/>">
							</div>
						</form>
					</div>
					
					<div class="clear"></div>
					<hr>
					<div class="offer-review__list">
						<s:iterator value="cList" status="stat">
							<s:if test="c_re_step < 1">
							<div class="offer-review__list--content">
								<div class="starRating starRating--m starRating--blue starRating--"></div>
								<p class="offer-review__list--writer"><s:property value="c_id"/><p>
								<p class="offer-review__list--purpose"><s:property value="c_reg_date"/></p>
								<p class="offer-review__list--message">
									<div class="with-more " style="max-height: 100px;"><s:property value="c_content"/></div>
									<input type="button" id="ff" value="답글">
									
									<div class="f">
										<form action="TourComment.action"> <!-- method="post" -->
											<div class="form-group">
												<input class="form-control input-sm" name="c_id" type="text" placeholder="아이디" style="width:30%;">
												<textarea class="form-control" rows="4" placeholder="내용" name="c_content"></textarea>
												<input type="submit" value="작성" class="btn btn-default btn-xs">
												<input type="hidden" name="currentPage" value="<s:property value="currentPage"/>">
												<input type="hidden" name="tour_no" value="<s:property value="no"/>">
												<input type="hidden" name="currentPageC" value="<s:property value="currentPageC"/>">
											</div>
										</form>
									</div>
								</p>
							</div>
							</s:if>
							<!-- 답글 -->
							<s:else>
							<div class="offer-review__reply">
								<img class="offer-review__reply--icon" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxMCIgdmlld0JveD0iMCAwIDEwIDEwIj4KICAgIDxwYXRoIGZpbGw9IiNDRUQ0REEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTIgOGg4djJIMFYwaDJ2OHoiLz4KPC9zdmc+Cg==" alt="reply">
								<p class="offer-review__reply--guide"><s:property value="c_id"/></p>
								<p class="offer-review__reply--message"><s:property value="c_content"/></p>
							</div>
							</s:else>
							<hr>
						</s:iterator>
						<!-- <div class="offer-review--more" style=""><button type="button" class="app-button app-button__type--outline app-button__size--m">후기 더 보기</button></div> -->
					</div>
				</div><!-- review -->
				
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Collapsible Group Item #1
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Collapsible Group Item #2
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Collapsible Group Item #3
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>
</div>
				
			</div><!-- offerDetail-->
		</div>
	</div>

</body>
</html>

		
