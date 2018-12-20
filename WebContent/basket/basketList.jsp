<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<script src="../js/bootstrap.js" type="text/javascript"></script>
<meta charset="EUC-KR">
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

<div class='header-title'><h2><center>나의 위시리스트</center></h2></div>

</div>
<div class='wishlists-header-divider'></div>
<div class='wishlists-header-subtitle'><p class="np"><center>총 개의 상품</center></p></div>
</div>

<div class='wishlists-cards-container'>

<div class='select-wrapper' align="center" >


<table class="table" size="80%" width="80%" align="center">
<table width="80%" cellpadding="0" cellspacing="0">
<tr width="80%">
<td align=right>
  <select>
    <option value="도시">도시별로 보기</option>
   <option value="상품">상품 리스트로 보기</option>
  </select>
  </td>
</tr>
</table>

	<tr>
		<td colspan=2>
		<p align="center">
		<input type="hidden" name="order" value="basket">
	
		<table class="table" width="80%" cellpadding="0" cellspacing="0">
			<tr height=26 bgcolor="#FFDDDD">
				<td height="3" colspan="7" align=left>
				<input name="checkall" type="checkbox" 
							onclick="javascript:CheckAll()"></td>
			</tr>
			<tr align="center">
				<td width="10%"><font size="2">번호</font></td>
				<td width="15%"><font size="2">사진</font></td>
				<td width="55%"><font size="2">상품명</font></td>
				<td width="10%"><font size="2">수량</font></td>
				<td width="10%"><font size="2">가격</font></td>
			</tr>
		
			<tr align="center">
			<td><font size="2"></font></td>
			<td><font size="2"><img width=80 height=80></font></td>
			<td><font size="2"></font></td>
			<td><font size="2">
			</font></td>
			<td><font size="2"></font></td>
			<td><font size="2">
			</font></td>
			</tr>
					
		<form action="BasketDelete.action" name="Bdel" method="post" onsubmit="return check()">
			<%-- <s:hidden name="id" value="${#session.id }"/> --%>
			<s:iterator value="blist" status="stat">
			 <li class="list">
			  <ul>
			    <li><input type="checkBox" class="checkbox" id="del_id" name="deleteCheck" value="<s:property value="no"/>"
			    onclick="chkBox(this.checked)"></li>
			    <li><img src="" alt=""></li>
			    <li><s:property value="name" /></li>
			    <li><s:property value="price"/>원</li>
			    <li><s:property value="amount"/>개</li>
			  </ul>
			  </li>
			  </s:iterator>	
		
			
			
			<tr class="btn_wrap">
			<s:if test="blist.size()>0">
			<td colspan="7" align="center">
				<font size="2">위시리스트에 담긴 상품이 없습니다.<br>Thankyou My Tour와 즐거운 여행을 계획해보세요. </font>
			</td>
			</tr>
		</s:if>
		
		</table>
		
		<table class="table" width="80%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="2" bgcolor="#FFDDDD"></td>
			</tr>
		</table>
		<br>
		
		
		</form>
	
		</p>
		</td>
	</tr>
</table>

</div>
</div>
</main>


</body>
</html>