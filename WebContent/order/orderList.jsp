<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역</title>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<script src="../js/bootstrap.js" type="text/javascript"></script>

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

<main class='order-list'>
<div class='orderlists-container'>
<div class='orderlists-header-container'>
<div class='orderlists-title-wrapper'>
<div class='header-title'><h2>예약내역</h2></div>
</div>
<div class='orderlists-header-divider'></div>


<div class='orderlists-cards-container'>
<div class='select-wrapper' align="center">

<table class="table" size="80%" width="80%" align="center">
       <tr>
		<td colspan=2>
		<p align="center">
		<input type="hidden" name="order" value="order">
	
		<table class="table" width="80%" cellpadding="0" cellspacing="0">
		       <div align="right">
               <select>
                 <option value="투어">투어&티켓</option>
                 <option value="숙소">숙소</option>
              </select></div>
			<tr height=26 bgcolor="#EEDAFF">
				<td height="3" colspan="7" align=left>
				<input name="checkall" type="checkbox" 
							onclick="javascript:CheckAll()"></td>
			
				&emsp;&emsp;<th width="15%"><font size="2">번호</font></th>
				<th width="25%"><font size="2">사진</font></th>
				<th width="35%"><font size="2">상품명</font></th>
				<th width="10%"><font size="2">수량</font></th>
				<th width="10%"><font size="2">가격</font></th>
			</tr>
			
	
	<form action="DeleteOrder.action" name="Odel" method="post" onsubmit="return check()">
			<s:hidden name="id" value="%{session.session_id }"/>
			<s:iterator value="olist" status="stat">
			 <td class="list">
			  <tr align="center">
			    <td><input type="checkBox" class="checkbox" id="del_id" name="deleteCheck" value="<s:property value="%{session.session_no}"/>"
			    onclick="chkBox(this.checked)"></td>
			    <td><img src="" alt=""></td>
			    <td><s:property value="%{session.session_name}" /></td>
			    <s:if test="olist.size()==null"> <br>
				<img alt='empty' class='icon1' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/empty/ic_reservation@2x-8ab77f8ad8f413a06e719279615decc80fecd3deea6ed9c67ad032d95a8069a0.png' width='58px'><br>
아직 준비중인 여행이 없습니다.<br/>TMT와 함께 즐거운 여행을 떠나보세요.<br><br></s:if>
			    <td><s:property value="%{session.session_amount}"/>개</td>
			    <td><s:property value="%{session.session_price}"/>원</td>
			  </tr>
            
			  <s:if test="olist.size()>0">
			<input type="submit" name="submit" value="선택삭제">
			</s:if>	
		 </s:iterator>	
		</table>
	
	
	
	<table class="table">
			<tr>
				<td height="2" bgcolor="#EEDAFF"></td>
			</tr>
				</table>


		

</div>
</div>
</td>
</tr>
</table>
</div>
</div>
</body>
</html>






