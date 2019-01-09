<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../basket/basketcss.css" type="text/css">

<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script>
$(document).ready(function(){
    //최상단 체크박스 클릭
    $("#checkall_hotel").click(function(){
        //클릭되었으면
        if($("#checkall_hotel").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[id=checkbox_hotel]").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[id=checkbox_hotel]").prop("checked",false);
        }
    })
    
    $("#checkall_tour").click(function(){
        //클릭되었으면
        if($("#checkall_tour").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[id=checkbox_tour]").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[id=checkbox_tour]").prop("checked",false);
        }
    })
})

</script>
<style>
</style>
<title>나의 위시리스트</title>
</head>
<body>
<div id = "all_List">
     <div id="order_title">
        	<b><font size="6"><img src="./images/logo_ss.JPG" width="70" height="60">&nbsp;<s:property value="%{session.session_id}" />의 위시리스트&nbsp;<img src="./images/heart.png" width="25" height="25"></font></b>
     </div>
     <div id="hotel_box">
          <div id="hotel_title">
             <b><font size="8">Hotel</font> 총 <s:property value="totalCount" />개의 상품</b>
     	  </div><!-- hotel_title 끝 -->
     	  <div id="hotel_content">
     	     <s:if test="bhlist.size()<=0">
     	         <div id="not_list">
					 <center><img src="./images/wishlist_empty.jpg" width="40" height="40">
					 <br><br>위시리스트에 담긴 상품이 없습니다.<br>TMT와 즐거운 여행을 계획해보세요.</center>
				 </div>
			</s:if>
			<form action="DeleteBasket.action" method="get">
					<s:hidden name="id" value="%{session.session_id}" />
					<s:hidden name="type" value="0" />
					 <s:if test="bhlist.size()>0">
					<div id="delete_title" align="right" style="margin-top: -3%; margin-right: 6%;">
					      <input id="checkall_hotel" type="checkbox">전체선택&nbsp;&nbsp;&nbsp;&nbsp;
						 <input type="submit" value="선택삭제">
					</div>	<!-- delete_title 끝 -->
					</s:if>
				<s:iterator value="bhlist" status="stat">
				   <a href="HotelView.action?no=<s:property value='no'/>">
     	           <div id="HC_all">
     	              <div id="image_HC">
							<s:if test="image1 != null">
								<img src="/TMT/upload/hotel/<s:property value="%{image1}" />">
							</s:if>
							<s:else>
								<img src="/TMT/images/noimage.jpg">
							</s:else>
					  </div>
				      <div id="CC_HC">
				             <font size="2" color=#8C8C8C><s:property value="country" /> · 
				             <s:property value="region" /></font>
				             <br>
				             <b> <font size="3"><s:property value="name" /></font></b>
				             <br><br>
				             <font size="3" color=#8C8C8C><b><s:property value="price" />원</b></font>
				             <font size="2" color=#8C8C8C>/ 1인</font>
				             <div align="right">
				             <input id="checkbox_hotel" type="checkbox" name="del" value="${seq_no}">
				             </div>
				      </div>     	             
     	          </div>
     	          </a>
             </s:iterator>
             </form>
     	  </div><!-- hotel_content 끝 -->
     	   <s:if test="bhlist.size()>0">
     	  <div id="hotel_footer">
            <center><s:property value="pagingHtml" escape="false" /></center>
     	  </div><!-- hotel_footer 끝 -->
     	  </s:if>
     </div><!-- hotel_box 끝 -->
     
     <div id= "tour_box">
          <div id="tour_title">
             <b><font size="8">Tour</font> 총 <s:property value="totalCount2" />개의 상품</b>
     	  </div><!-- tour_title 끝 -->
     	  <div id="tour_content">
             <s:if test="btlist.size()<=0">
     	         <div id="not_list">
					 <center><img src="./images/wishlist_empty.jpg" width="40" height="40">
					 <br><br>위시리스트에 담긴 상품이 없습니다.<br>TMT와 즐거운 여행을 계획해보세요.</center>
				 </div>
			</s:if>
			<form action="DeleteBasket.action" name="frm2" method="get">
					<s:hidden name="id" value="%{session.session_id}" />
				<s:hidden name="type" value="1" />
					<s:if test="btlist.size() > 0">
					<div id="delete_title" align="right" style="margin-top: -3%; margin-right: 6%;">
					     <input id="checkall_tour" type="checkbox">전체선택
						 <input type="submit" value="선택삭제">
					</div>	<!-- delete_title 끝 -->
					</s:if>
				<s:iterator value="btlist" status="stat">
				  <a href="TourView.action?no=<s:property value='no'/>"><s:property value="name" />
			      <div id="HC_all">
     	              <div id="image_HC">
							<s:if test="image1 != null">
								<img src="/TMT/upload/tour/<s:property value='%{image1}'/>">
							</s:if>
							<s:else>
								<img src="/TMT/images/noimage.jpg" >
							</s:else>
						</div>
     	                <div id="CC_HC">
				             <font size="2" color=#8C8C8C><s:property value="country" /> · 
				             <s:property value="region" /></font>
				             <br>
				             <b> <font size="3"><s:property value="name" /></font></b>
				             <br><br>
				             <font size="3" color=#8C8C8C><b><s:property value="price" />원</b></font>
				             <font size="2" color=#8C8C8C>/ 1인</font>
				             <div align="right">
				             <input id="checkbox_tour" type="checkBox" name="del" value="${seq_no }">
				             </div>
				      </div>   
     	          </div>
     	           </a>
			</s:iterator>
			</form>
     	  </div><!-- tour_content 끝 -->
     	  <s:if test="btlist.size() > 0">
     	  <div id="tour_footer">
            <center><s:property value="pagingHtml2" escape="false" /></center>
     	  </div><!-- tour_footer 끝 -->
     	  </s:if>
     </div> <!-- tour_box 끝 -->

</div> <!-- all_List 끝나는곳 -->

</body>
</html>