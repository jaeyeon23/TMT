<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역</title>
<link rel="stylesheet" href="/TMT/order/OLcss6.css" type="text/css">
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
    
    $("#checkall_air").click(function(){
        //클릭되었으면
        if($("#checkall_air").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[id=checkbox_air]").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[id=checkbox_air]").prop("checked",false);
        }
    })
})

</script>
</head>
<body>
<div id = "all_List">
     <div id="order_title">
        	<b><font size="6"><img src="./images/logo_ss.JPG" width="70" height="60">&nbsp;<s:property value="%{session.session_id}" /> 님의 예약내역&nbsp;<img src="./images/heart.png" width="25" height="25"></font></b>
     </div>
     <div id="air_box">
          <div id="air_title">
             <b><font size="8">Air</font> 총 <s:property value="totalCount3" />개의 상품</b>
     	  </div><!-- air_title 끝 -->
     	  <div id="air_content">
     	     <s:if test="oalist.size()<=0">
     	         <div id="not_list">
					 <center><img src="./images/wishlist_empty.jpg" width="40" height="40">
					 <br><br>아직준비중인 여행이 없습니다.<br>TMT와 즐거운 여행을 계획해보세요.</center>
				 </div>
			</s:if>
			<form action="DeleteOrder.action" method="get">
					<s:hidden name="id" value="%{session.session_id}"/>
					<s:hidden name="type" value="2"/>
					 <s:if test="oalist.size()>0">
					<div id="delete_title_AA">
					      <input id="checkall_air" type="checkbox">전체선택&nbsp;&nbsp;&nbsp;&nbsp;
						 <input type="submit" value="선택삭제">
					</div>	<!-- delete_title 끝 -->
					</s:if> 
				<s:iterator value="oalist" status="stat">
			        <div id="check_ari">
			        <input type="checkBox" id="checkbox_air" name="del" value="${seq_no }">
			        <s:hidden name="arr_no" value="%{no}"/>
			        <s:hidden name="arr_seat" value="%{people}"/>
			        </div>
     	     		<div id="air_content_N">
     	                <div id="image_AA">
							<s:if test="image1 != null">
								<span class="ico_airline"><img
									src="/TMT/upload/air/<s:property value='image1'/>"></span>
							</s:if>
							<s:else>
								<img src="/TMT/images/noimage.jpg">
							</s:else>
						</div>
						 <div id="ABC_AA">
						   <s:property value="%{air_company}"/>
						 </div>
						 <div id="ABC_AB">
							<font style="background-color:#DB0000;color:white; padding:1%;">출 발</font><br>
							<s:date name="ad" format="M월 dd일"/>
						 </div>
						 <div id="ABC_AC" >
						    <s:property value="%{arv}"/><br>
						    <s:date name="ad" format="HH:mm"/> 
						 </div>
						 <div id="ABC_AD" >
						     <img src="/TMT/images/air_c.JPG" >
						 </div>
						 <div id="ABC_AE" >
						     <s:property value="%{dep}"/><br>
						     <s:date name="dd" format="HH:mm"/>
						 </div>
						 <div id="ABC_AF" >
						     <font style="background-color:#003399; color:white; padding:1%;">도착</font><br>
						     <s:date name="dd" format="M월dd일"/>
						 </div>
						  <a href="OrderView.action?seq_no=<s:property value='seq_no'/>&id=<s:property value='%{session.session_id}'/>&type=2">
						  <div id="ABC_AG" >
							예약내역<br>
							상세보기
						  </div>
						  </a>
					</div>
     		    </s:iterator>
     	    </form>
     	  </div><!-- air_content 끝 -->
     	   <s:if test="oalist.size()>0">
     	  <div id="air_footer">
            <center><s:property value="pagingHtml3" escape="false" /></center>
     	  </div><!-- air_footer 끝 -->
     	  </s:if>
     </div><!-- "air_box" 끝 -->
     
     
     <div id="hotel_box">
          <div id="hotel_title">
             <b><font size="8">Hotel</font> 총 <s:property value="totalCount" />개의 상품</b>
     	  </div><!-- hotel_title 끝 -->
     	  <div id="hotel_content">
     	     <s:if test="ohlist.size()<=0">
     	         <div id="not_list_HT">
					 <center><img src="./images/wishlist_empty.jpg" width="40" height="40">
					 <br><br>아직준비중인 여행이 없습니다.<br>TMT와 즐거운 여행을 계획해보세요.</center>
				 </div>
			</s:if>
			<form action="DeleteOrder.action" method="get">
					<s:hidden name="id" value="%{session.session_id}"/>
					<s:hidden name="type" value="0"/>
					
					<s:if test="ohlist.size()>0">
					<div id="delete_title_HH">
					      <input id="checkall_hotel" type="checkbox">전체선택&nbsp;&nbsp;&nbsp;&nbsp;
						 <input type="submit" value="선택삭제">
					</div>	<!-- delete_title 끝 -->
					</s:if> 
					
					
					<s:iterator value="ohlist" status="stat">
			        <div id="check_hotel">
			        	<input type="checkBox" id="checkbox_hotel" name="del" value="${seq_no }">
			        	<s:hidden name="arr_no" value="%{no}"/>
			        	<s:hidden name="arr_room" value="%{room}"/>
			        </div>
     	     		<div id="hotel_content_N">
     	                <div id="image_HH">
							<s:if test="image1 != null">
								<img src="/TMT/upload/hotel/<s:property value='image1'/>" width="200" height="120">
							</s:if>
							<s:else>
								<img src="/TMT/images/noimage.jpg">
							</s:else>
						</div> 
						<div id="ABC_HA">
							<b><font size="4"><s:property value="name"/></font></b>
						 </div>
						 <a href="OrderView.action?seq_no=<s:property value='seq_no'/>&id=<s:property value='%{session.session_id}'/>&type=0">
						 <div id="ABC_HB">
							예약상세내역 >
						 </div>
						 </a>
					</div>
     		   		</s:iterator>				
			</form>
     	  </div><!-- hotel_content 끝 -->
     	   <s:if test="ohlist.size()>0">
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
             <s:if test="otlist.size()<=0">
     	         <div id="not_list_HT">
					 <center><img src="./images/wishlist_empty.jpg" width="40" height="40">
					 <br><br>아직준비중인 여행이 없습니다.<br>TMT와 즐거운 여행을 계획해보세요.</center>
				 </div>
			</s:if>
			<form action="DeleteOrder.action" method="get">
					<s:hidden name="id" value="%{session.session_id}"/>
					<s:hidden name="type" value="1"/>
					<s:if test="otlist.size()>0">
					<div id="delete_title_HH">
					      <input id="checkall_tour" type="checkbox">전체선택&nbsp;&nbsp;&nbsp;&nbsp;
						 <input type="submit" value="선택삭제">
					</div>	<!-- delete_title 끝 -->
					</s:if> 
					
					<s:iterator value="otlist" status="stat">
			        <div id="check_hotel">
			        	<input type="checkBox" id="checkbox_tour" name="del" value="${seq_no }">
			        	<s:hidden name="arr_no" value="%{no}"/>
			        	<s:hidden name="arr_amount" value="%{amount}"/>
			        </div>
     	     		<div id="hotel_content_N">
     	                <div id="image_HH">
							<s:if test="image1 != null">
								<img src="/TMT/upload/tour/<s:property value='image1'/>" width="200" height="120">
							</s:if>
							<s:else>
								<img src="/TMT/images/noimage.jpg">
							</s:else>
						</div> 
						<div id="ABC_HA">
							<b><font size="4"><s:property value="name"/></font></b>
						 </div>
						 <a href="OrderView.action?seq_no=<s:property value='seq_no'/>&id=<s:property value='%{session.session_id}'/>&type=1">
						 <div id="ABC_HB">
							예약상세내역 >
						 </div>
						 </a>
					</div>
     		   		</s:iterator>	
			</form>
     	  </div><!-- tour_content 끝 -->
     	  <s:if test="otlist.size() > 0">
     	  <div id="tour_footer">
            <center><s:property value="pagingHtml2" escape="false" /></center>
     	  </div><!-- tour_footer 끝 -->
     	  </s:if>
     </div> <!-- tour_box 끝 -->
     
</div> <!-- all_List 끝나는곳 -->


</body>
</html>