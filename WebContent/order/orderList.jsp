<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역</title>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<script src="../js/bootstrap.js" type="text/javascript"></script>

</head>
<body>

<div class="main">
<div class='header-title'><h2><center><br><br>예약내역</center></h2></div>
<div class='wishlists-header-divider'></div>
<div class='wishlists-header-subtitle'><center>총 개의 상품</center></div>


<table class="table" width="100%" cellpadding="0" cellspacing="0">
	<table width="100%" cellpadding="0" cellspacing="0">
  <tr width="100%">
    <td align="right">
  <select>
    <option value="투어">투어&티켓</option>
   <option value="숙소">숙소</option>
  </select>
  </td>
</tr>
</table>
<tr>
		<td colspan=2>
		<p align="center">
			<tr >
				<td height="3" colspan="7" align=left></td>
			</tr>
			 
			<table class="table" width="80%" cellpadding="0" cellspacing="0">
			<tr height=26 bgcolor="#EEDAFF">
				<td height="3" colspan="7" align=left></td></tr>

			
			<tr align="center">
				<td width="10%"><font size="2">번호</font></td>
				<td width="15%"><font size="2">사진</font></td>
				<td width="55%"><font size="2">상품명</font></td>
			</tr>
		
			<tr align="center">
			<td><font size="2"></font></td>
			<td><font size="2"><form action="ViewOrder.action" name="ov" method="post""><input type="image" width=80 height=80></font></td></form>
			<td><font size="2"><a href="orderView.jsp"></a></font></td>
			</tr>

	</table>
	<table class="table">
			<tr>
				<td height="2" bgcolor="#EEDAFF"></td>
			</tr>
<div class='traveler-body'>
<div class='box clearfix'>
<div class='shared-empty-container'>
<div class='empty-wrapper wrapper-center' align="center">
<img alt='empty' class='icon' height='56px' src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/empty/ic_reservation@2x-8ab77f8ad8f413a06e719279615decc80fecd3deea6ed9c67ad032d95a8069a0.png' width='58px'>
<div class='empty-text' align="center">아직 준비중인 여행이 없습니다.<br/>TMT와 함께 즐거운 여행을 떠나보세요.<br/></div>
</div>
</div>

</div>
			
		</table>
		

</div>
</div>

			

</div>
</body>
</html>