<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<script src="js/bootstrap.js" type="text/javascript"></script>

</head>
<body>

<div>
<h2>예약내역</h2>
</div>
<div class="main">

<table align="left">
 <tr>
  <td align=center style="color:#F9E4A6;height:5px;"colspan=6>
  <input type=button onclick="javascript:window.location='orderList.jsp'" value="준비중인 여행"/>
</td>
</tr>
</table>


  <table size="80%" width="80%" align="center">
    <tr>
     	<td colspan=2>
		<input type="hidden" name="order" value="order">
		<table size="80%" width="80%" cellpadding="0" cellspacing="0">
			<tr height=10 bgcolor="#9EDDFB">
				<td height="3" colspan="7" align=left></td>
			</tr>
			<tr bgcolor="#FBECC2" align="center">
				<td width="20%"><font size="2">사진</font></td>
				<td width="55%"><font size="2">상품명</font></td>
			</tr>
			<tr align="center">
			<td><font size="2"><img width=100 height=100></font></td>
			<td><font size="2"></font></td>
			</tr>
	
		</table>
     
  </table>

</div>
</body>
</html>