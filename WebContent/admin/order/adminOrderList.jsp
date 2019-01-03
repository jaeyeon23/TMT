<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link rel="stylesheet" media="screen" href="css/admin/view1.css">
<link rel="stylesheet" media="all" href="css/admin/view2.css">
<link rel="stylesheet" media="screen" href="css/admin/view3.css">
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

<div class="resp-container--row ">
	<div class='select-wrapper' align="center">
		<div align="right">
			<select>
				<option value="투어">투어&티켓</option>
				<option value="숙소">숙소</option>
				<option value="숙소">항공</option>
			</select>
		</div>
	</div>
	<table class="table" border="1" width="100%" cellpadding="0" cellspacing="0">
	    <tr height=26>
			<th width="3%">
			<input name="checkall" type="checkbox" onclick="javascript:CheckAll()"></th>
				&emsp;&emsp;
			<th width="5%"><font size="2">번호</font></th>
			<th width="6%"><font size="2">사진</font></th>
			<th width="7%"><font size="2">아이디</font></th>
			<th width="25%"><font size="2">상품명</font></th>
			<th width="25%"><font size="2">이메일</font></th>
			<th width="10%"><font size="2">인원</font></th>
			<th width="10%"><font size="2">가격</font></th>
		</tr>
		<s:iterator value="list" status="stat">
		<s:url id="viewURL" action="OrderView"><!--  -->
			<s:param name="seq_no" value="seq_no"/><!--  -->
			<s:param name="currentPage" value="currentPage"/><!--  -->
			<s:param name="type" value="type"/>
		</s:url>
		
		<tr bgcolor="#FFFFFF" align="center">
			<td><input type="checkbox" name="seq_no" value="seq_no"></td>
			<td><s:property value="no"/></td>
			<td><s:property value="image1"/></td>
			<td><s:property value="id"/></td>
			<td align="left">
				<s:a href="%{viewURL}"><s:property value="name"/></s:a>
			</td>
			<td><s:property value="email"/></td>
			<td><s:property value="count"/></td>
			<td><s:property value="price"/></td>
		</tr>
		
		</s:iterator>
		
	</table>
</div>

</body>
</html>






