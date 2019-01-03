<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<script src="../js/bootstrap.js" type="text/javascript"></script>
<meta charset="UTF-8">
<title>나의 위시리스트</title>


<script type="text/JavaScript">
   var check = false;
   function CheckAll() {
      var chk = document.getElementsByName("deleteCheck");
      if (check == false) {
         check = true;
         for (var i = 0; i < chk.length; i++) {
            chk[i].checked = false;
         }
      } else {
         check = false;
         for (var i = 0; i < chk.length; i++) {
            chk[i].checked = true;
         }
      }
   }
</script>
<!--  -->
<script type="text/javascript">
   function check() {

      if (frm.deleteCheck.checked == false) {
         alert("체크박스를 선택해주세요");
         return false;
      }
   }
</script>
</head>
<body>

<main class='wish-list'>
<div class='wishlists-container'>
<div class='wishlists-header-container'>
<div class='wishlists-title-wrapper'>

<div class='header-title'><h2><center><s:property value="%{session.session_id}"/>의 위시리스트&nbsp;<img src="./images/heart.png" width="20" height="20"></center></h2>

</div><br>
</div>
<div class='wishlists-header-divider'></div>



<div class='wishlists-cards-container'>

<div style="float:left;width:50%;"  >
<h4>HOTEL</h4><br>
hotel&nbsp;<s:property value="totalCount"/>개의 상품
<table class="table"  align="center">


   <tr>
      <td colspan=2>
      <p align="center">
      <input type="hidden" name="order" value="basket">
   
      <table class="table" cellpadding="0" cellspacing="0">
         <tr  align="center" height=26 bgcolor="#FFDDDD">
            <td  align=left>
            <input name="checkall" type="checkbox" 
                     onclick="javascript:CheckAll()"></td>
         
            <td width="10%"><font size="2">번호</font></td>
            <td width="15%"><font size="2">사진</font></td>
            <td width="45%"><font size="2">상품명</font></td>
            <td width="10%"><font size="2">국가</font></td>
            <td width="10%"><font size="2">지역</font></td>
            <td width="10%"><font size="2">가격</font></td>
            
         </tr>
    <s:iterator value="bhlist" status="stat">
       <tr align="center">
         <td align="left"><input type="checkBox" class="checkbox" id="del_id" name="deleteCheck" value="<s:property value="no"/>"
             onclick="chkBox(this.checked)"></td>
         <td><s:property value="no"/></td>
           <td><s:property value="image1"/></td>
          <td><s:property value="name"/>
         </td>
         <td><s:property value="country"/>
         </td>
         <td><s:property value="region"/>
         </td>
         <td><s:property value="price"/></td>
         </tr>
</s:iterator>
     <s:if test="bhlist.size()<=0">
      <tr align="center">
         <td colspan="7">
         <br>
            <img src="./images/wishlist_empty.jpg" width="40" height="40"><br><br>위시리스트에 담긴 상품이 없습니다.<br>TMT와 즐거운 여행을 계획해보세요. 
         </td>
      </tr>
           </s:if>

      </table>
   

      <table class="table" border="0" cellspacing="0" cellpadding="0">
         <tr>
            <td height="2" bgcolor="#FFDDDD"></td>
         </tr>
      </table>
      <form action="DeleteBasket.action" name="Bdel" method="post" onsubmit="return check()">
      <s:if test="bhlist.size()>0">
         <input type="submit" name="submit" value="선택삭제">
         </s:if>
      <br>
      </form>
   <tr align="center">
      <td colspan="7">
      <s:property value="pagingHtml" escape="false"/>
      </td>
   </tr> 
</table>
</div>

<div style="float:left;width:50%;"  >
<h4>TOUR</h4><br>
tour<s:property value="totalCount2"/>개의 상품
<table class="table"   align="center">


   <tr align="center">
      <td colspan=2>
      <p align="center">
      <input type="hidden" name="order" value="basket">
   
      <table class="table"  cellpadding="0" cellspacing="0">
         <tr height=26 bgcolor="#FFDDDD">
            <td  align=left>
            <input name="checkall" type="checkbox" 
                     onclick="javascript:CheckAll()"></td>
         
            <td width="10%"><font size="2">번호</font></td>
            <td width="15%"><font size="2">사진</font></td>
            <td width="45%"><font size="2">상품명</font></td>
            <td width="10%"><font size="2">국가</font></td>
            <td width="10%"><font size="2">지역</font></td>
            <td width="10%"><font size="2">가격</font></td>
            
         </tr>
    <s:iterator value="btlist" status="stat">
       <tr align="center">
         <td align="left"><input type="checkBox" class="checkbox" id="del_id" name="deleteCheck" value="<s:property value="no"/>"
             onclick="chkBox(this.checked)"></td>
         <td><s:property value="no"/></td>
           <td><s:property value="image1"/></td>
          <td><s:property value="name"/>
         </td>
         <td><s:property value="country"/>
         </td>
         <td><s:property value="region"/>
         </td>
         <td><s:property value="price"/></td>
         </tr>
</s:iterator>
     <s:if test="btlist.size()<=0">
      <tr align="center">
         <td colspan="7">
         <br>
            <img src="./images/wishlist_empty.jpg" width="40" height="40"><br><br>위시리스트에 담긴 상품이 없습니다.<br>TMT와 즐거운 여행을 계획해보세요. 
         </td>
      </tr>
           </s:if>

      </table>
      

      <table class="table" border="0" cellspacing="0" cellpadding="0">
         <tr>
            <td height="2" bgcolor="#FFDDDD"></td>
         </tr>
      </table>
      <form action="DeleteBasket.action" name="Bdel" method="post" onsubmit="return check()">
      <s:if test="btlist.size()>0">
         <input type="submit" name="submit" value="선택삭제">
         </s:if> 
      <br>
      </form>
   <tr align="center">
      <td colspan="7">
      <s:property value="pagingHtml2" escape="false"/>
      </td>
   </tr> 
</table>
</div>
</div>
</div>
</main>


</body>
</html>