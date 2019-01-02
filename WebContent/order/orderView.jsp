<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역 상세보기</title>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<script src="../js/bootstrap.js" type="text/javascript"></script>

</head>
<body>

<div class="main">
<div class='header-title'><h2><center>예약내역</center></h2></div><br><br>

<div align="right">
<form action="ModifyOrder.action" name="mo" method="post">
<button type="submit" class="btn btn-default">수정</button></div><br></form>

<table class="table" width="80%" cellpadding="0" cellspacing="0">
			
			<tr align="left" bgcolor="#EEDAFF">
			   <td align="center"><font size="2"><strong>사진</strong></font></td>
			   <th align="center"><font size="2"><strong>주문번호</strong></font></th>
			   <th align="center"><font size="2"><strong>상품명</strong></font></th>
			   <th align="center"><font size="2"><strong>가격</strong></font></th>
			   <th align="center"><font size="2"><strong>출발일</strong></font></th>
			   <th align="center"><font size="2"><strong>국가</strong></font></th>
			   <th align="center"><font size="2"><strong>지역</strong></font></th>
			   <th align="center"><font size="2"><strong>체크인</strong></font></th>
			   <th align="center"><font size="2"><strong>체크아웃</strong></font></th>
			   <th align="center"><font size="2"><strong>출발일</strong></font></th>
			   <th align="center"><font size="2"><strong>입국일</strong></font></th>
			 </tr>
			 
		    <tr align="left">
			   <td align="center"><s:property value="image1" /></td>
			   <td align="center"><s:property value="seq_no" /></td>
			   <td align="center"><s:property value="name" /></td>
			   <td align="center"><s:property value="price" /></td>
			   <td align="center"><s:property value="day" /></td>
			   <td align="center"><s:property value="region" /></td>
			   <td align="center"><s:property value="country" /></td>
			   <td align="center"><s:property value="checkin" /></td>
			   <td align="center"><s:property value="checkout" /></td>
			   <td align="center"><s:property value="ad" /></td>
			   <td align="center"><s:property value="dd" /></td>
			 </tr>
			   
		

</table>
	<table class="table">
			<tr>
				<td height="2" bgcolor="#EEDAFF"></td>
			</tr>
		</table></div>	

</body>
</html>