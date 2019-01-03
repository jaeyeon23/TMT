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
<link rel="stylesheet" href="/TMT/item/tour/t.css" type="text/css">
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

<div id="tuor_body">
	<div id="tuor_side">
		<div id="side">
		     <form id="Tsearch">
					<div id="search_bar">
						<input type="text" name="tourname" placeholder="상품을 검색해보세요">
						<button>검색</button>
						
					</div>
				</form>
				<br>
		     <b>CATEGORY</b>
		     <br>
		     <hr>
		     <ul>
		     	<li><a href="AdminOrderList.action?c=t" class="on">투어</a></li>
	     	</ul>
	     	<hr>
	     	<ul>
		     	<li><a href="AdminOrderList.action?c=a" class="on">항공</a></li>
	     	</ul>
	     	<hr>
	     	<ul>
		     	<li><a href="AdminOrderList.action?c=h" class="on">호텔</a></li>
			</ul>
			<hr>
		</div>
	</div>
<div id="tourList">
<s:if test="cc==h">
	<h2>호텔</h2>
	<table class="table" border="0" width="100%" cellpadding="0" cellspacing="0">
	    <tr height=26>
			<th width="3%">
			<input name="checkall" type="checkbox" onclick="javascript:CheckAll()"></th>
			
			<th width="5%"><font size="2">번호</font></th>
			<th width="10%"><font size="2">사진</font></th>
			<th width="7%"><font size="2">아이디</font></th>
			<th width="20%"><font size="2">상품명</font></th>
			
			<th width="10%"><font size="2">전화번호</font></th>
			<th width="10%"><font size="2">체크인</font></th>
			<th width="10%"><font size="2">체크아웃</font></th>
			<th width="5%"><font size="2">인원</font></th>
			<th width="5%"><font size="2">잔여객실</font></th>
			<th width="7%"><font size="2">가격</font></th>
		</tr>
		<s:iterator value="list" status="stat">
		<s:url id="viewURL" action="AdminOrderView"><!--  -->
			<s:param name="no" value="no"/><!--  -->
			<s:param name="currentPage" value="currentPage"/><!--  -->
		</s:url>
		
		<tr bgcolor="#FFFFFF" >
			<td><input type="checkbox" name="no" value="no"></td>
			<td><s:property value="no"/></td>
			<td><img src="/TMT/upload/hotel/<s:property value="image1"/>"></td>
			<td><s:property value="id"/></td>
			<td align="left">
				<s:a href="%{viewURL}"><s:property value="name"/></s:a>
			</td>
			
			<td><s:property value="tel"/></td>
			<td><s:property value="checkin"/></td>
			<td><s:property value="checkout"/></td>
			<td align="center"><s:property value="people"/></td>
			<td align="center"><s:property value="room"/></td>
			<td><s:property value="price"/></td>
		</tr>
		</s:iterator>
	</table>
</s:if>
<%-- <s:elseif test="cc==a">
<h2>항공</h2>
	<table class="table" border="0" width="100%" cellpadding="0" cellspacing="0">
	    <tr height=26>
			<th width="3%">
			<input name="checkall" type="checkbox" onclick="javascript:CheckAll()"></th>
			
			<th width="5%"><font size="2">번호</font></th>
			<th width="10%"><font size="2">사진</font></th>
			<th width="7%"><font size="2">아이디</font></th>
			<th width="20%"><font size="2">상품명</font></th>
			
			<th width="10%"><font size="2">전화번호</font></th>
			<th width="10%"><font size="2">체크인</font></th>
			<th width="10%"><font size="2">체크아웃</font></th>
			<th width="5%"><font size="2">인원</font></th>
			<th width="5%"><font size="2">잔여객실</font></th>
			<th width="7%"><font size="2">가격</font></th>
		</tr>
		<s:iterator value="list" status="stat">
		<s:url id="viewURL" action="AdminOrderView"><!--  -->
			<s:param name="no" value="no"/><!--  -->
			<s:param name="currentPage" value="currentPage"/><!--  -->
		</s:url>
		
		<tr bgcolor="#FFFFFF" >
			<td><input type="checkbox" name="no" value="no"></td>
			<td><s:property value="no"/></td>
			<td><img src="/TMT/upload/hotel/<s:property value="image1"/>"></td>
			<td><s:property value="id"/></td>
			<td align="left">
				<s:a href="%{viewURL}"><s:property value="name"/></s:a>
			</td>
			
			<td><s:property value="tel"/></td>
			<td><s:property value="checkin"/></td>
			<td><s:property value="checkout"/></td>
			<td align="center"><s:property value="people"/></td>
			<td align="center"><s:property value="room"/></td>
			<td><s:property value="price"/></td>
		</tr>
		</s:iterator>
	</table>
</s:elseif> --%>
<s:else>
<h2>투어</h2>
	<table class="table" border="0" width="100%" cellpadding="0" cellspacing="0">
	    <tr height=26>
			<th width="3%">
			<input name="checkall" type="checkbox" onclick="javascript:CheckAll()"></th>
			
			<th width="5%"><font size="2">번호</font></th>
			<th width="10%"><font size="2">사진</font></th>
			<th width="7%"><font size="2">아이디</font></th>
			<th width="20%"><font size="2">상품명</font></th>
			<th width="7%"><font size="2">가격</font></th>
		</tr>
		<s:iterator value="list" status="stat">
		<s:url id="viewURL" action="AdminOrderView"><!--  -->
			<s:param name="no" value="no"/><!--  -->
			<s:param name="currentPage" value="currentPage"/><!--  -->
		</s:url>
		
		<tr bgcolor="#FFFFFF" >
			<td><input type="checkbox" name="no" value="no"></td>
			<td><s:property value="no"/></td>
			<td><img src="/TMT/upload/tour/<s:property value="image1"/>"></td>
			<td><s:property value="id"/></td>
			<td align="left">
				<s:a href="%{viewURL}"><s:property value="name"/></s:a>
			</td>
			<td><s:property value="price"/></td>
		</tr>
		</s:iterator>
	</table>
</s:else>
</div>
</div>
</body>
</html>






