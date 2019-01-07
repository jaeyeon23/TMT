<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
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
#image {
   /* border-radius: 15px 15px 0 0;
      padding: 1px 1px 1px 1px;
      width:220px;  */
   height: 40px;
}
</style>
<title>나의 위시리스트</title>

</head>
<body>
   <div class='header-title'>
      <h2>
         <center>
            <s:property value="%{session.session_id}" />
            의 위시리스트&nbsp;<img src="./images/heart.png" width="20" height="20">
         </center>
      </h2>
   </div>
   <br>
   <div class='wishlists-cards-container'>
      <h4>HOTEL</h4>
      <br> hotel&nbsp;
      <s:property value="totalCount" />
      개의 상품
      <table class="table" align="center">
         <form action="DeleteBasket.action" method="get">
            <s:hidden name="id" value="%{session.session_id}" />
            <s:hidden name="type" value="0" />
            <tr>
               <td colspan=2>
                  <p align="center">
                  <table class="table" cellpadding="0" cellspacing="0">
                     <tr align="center" height=26 bgcolor="#FFDDDD">
                        <td align=left><input id="checkall_hotel" type="checkbox"></td>
                        <td width="10%"><font size="2">번호</font></td>
                        <td width="15%"><font size="2">사진</font></td>
                        <td width="45%"><font size="2">상품명</font></td>
                        <td width="10%"><font size="2">국가</font></td>
                        <td width="10%"><font size="2">지역</font></td>
                        <td width="10%"><font size="2">가격</font></td>

                     </tr>

                     <s:iterator value="bhlist" status="stat">
                        <tr align="center" height="80px">
                           <td align="left"><input id="checkbox_hotel" type="checkbox" name="del"
                              value="${seq_no}"></td>
                           <td><s:property value="no" /></td>
                           <td>
                              <div id="image">
                                 <s:if test="image1 != null">
                                    <img src="/TMT/upload/tour/<s:property value="%{image1}" />">
                                 </s:if>
                                 <s:else>
                                    <img src="/TMT/images/noimage.jpg">
                                 </s:else>
                              </div>
                           </td>
                           <td><a href="HotelView.action?no=<s:property value='no'/>"><s:property value="name" /></a></td>
                           <td><s:property value="country" /></td>
                           <td><s:property value="region" /></td>
                           <td><s:property value="price" /></td>
                        </tr>
                     </s:iterator>
                     <s:if test="bhlist.size()<=0">
                        <tr align="center">
                           <td colspan="7"><br> <img
                              src="./images/wishlist_empty.jpg" width="40" height="40"><br>
                              <br>위시리스트에 담긴 상품이 없습니다.<br>TMT와 즐거운 여행을 계획해보세요.</td>
                        </tr>
                     </s:if>

                  </table>


                  <table class="table" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                        <td height="2" bgcolor="#FFDDDD"></td>
                     </tr>
                  </table> <s:if test="bhlist.size()>0">
                     <input type="submit" value="선택삭제">
                  </s:if> <br>
         </form>

         <tr align="center">
            <td colspan="7"><s:property value="pagingHtml" escape="false" /></td>
         </tr>

      </table>
   </div>

   <div>
      <h4>TOUR</h4>
      <br> tour&nbsp;
      <s:property value="totalCount2" />
      개의 상품
      <table class="table" align="center">
         <form action="DeleteBasket.action" name="frm2" method="get">
            <s:hidden name="id" value="%{session.session_id}" />
            <s:hidden name="type" value="1" />
            <tr>
               <td colspan=2>
                  <p align="center">
                  <table class="table" cellpadding="0" cellspacing="0">
                     <tr align="center" bgcolor="#FFDDDD">
                        <td align=left><input id="checkall_tour" type="checkbox"></td>
                        <td width="10%"><font size="2">번호</font></td>
                        <td width="15%"><font size="2">사진</font></td>
                        <td width="45%"><font size="2">상품명</font></td>
                        <td width="10%"><font size="2">국가</font></td>
                        <td width="10%"><font size="2">지역</font></td>
                        <td width="10%"><font size="2">가격</font></td>

                     </tr>

                     <s:iterator value="btlist" status="stat">
                        <tr align="center" height="80px">
                           <td align="left"><input id="checkbox_tour" type="checkBox" name="del"
                              value="${seq_no }"></td>
                           <td><s:property value="no" /></td>
                           <td>
                              <div id="image">
                                 <s:if test="image1 != null">
                                    <img src="/TMT/upload/tour/<s:property value='%{image1}'/>">
                                 </s:if>
                                 <s:else>
                                    <img src="/TMT/images/noimage.jpg" width="60px"
                                       height="60px">
                                 </s:else>
                              </div>
                           </td>
                           <td><a href="TourView.action?no=<s:property value='no'/>"><s:property value="name" /></a></td>
                           <td><s:property value="country" /></td>
                           <td><s:property value="region" /></td>
                           <td><s:property value="price" /></td>
                        </tr>
                     </s:iterator>
                     <s:if test="btlist.size()<=0">
                        <tr align="center">
                           <td colspan="7"><br> <img
                              src="./images/wishlist_empty.jpg" width="40" height="40"><br>
                              <br>위시리스트에 담긴 상품이 없습니다.<br>TMT와 즐거운 여행을 계획해보세요.</td>
                        </tr>
                     </s:if>

                  </table>


                  <table class="table" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                        <td height="2" bgcolor="#FFDDDD"></td>
                     </tr>
                  </table> <s:if test="btlist.size() > 0">
                     <input type="submit" value="선택삭제">
                  </s:if> <br>
         </form>
         <tr align="center">
            <td colspan="7"><s:property value="pagingHtml2" escape="false" />
            </td>
         </tr>

      </table>
   </div>


</body>
</html>