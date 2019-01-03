<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" media="screen" href="css/admin/view1.css" />
<link rel="stylesheet" media="all" href="css/admin/view2.css" />
<link rel="stylesheet" media="screen" href="css/admin/view3.css" />
</head>
<body>
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
			<th width="5%"><font size="2">번호</font></th>
			<th width="6%"><font size="2">사진</font></th>
			<th width="7%"><font size="2">아이디</font></th>
			<th width="10%"><font size="2">이름</font></th>
			<th width="15%"><font size="2">여권번호</font></th>
			<th width="25%"><font size="2"> 이메일</font></th>
			<th width="20%"><font size="2">수정/삭제</th>
		</tr>
		
		<s:iterator value="list" status="stat">
		<tr>
			<td>
				<s:property value="no"/>
			</td>	
			<td>
				<s:property value="image1"/>
			</td>	
			<td>
				<s:property value="id"/>
			</td>
			<td>
				<s:property value="name"/>
			</td>
			<td>
				<s:property value="passport"/>
			</td>
			<td>
				<s:property value="email"/>
			</td>
			<td>
				<button type="button" class="btn btn-default btn-sm" 
				onclick="javascript:location.href='AdminMemberView.action?id=<s:property value="id"/>&currentPage=<s:property value="currentPage"/>'">
							상세보기
				</button>
				<button type="button" class="btn btn-default btn-sm" 
				onclick="javascript:location.href='AdminMemberModifyForm.action?id=<s:property value="id"/>&currentPage=<s:property value="currentPage"/>'">
							수정
				</button>
				<button type="button" class="btn btn-default btn-sm" 
				onclick="javascript:location.href='AdminMemberDelete.action?id=<s:property value="id"/>&currentPage=<s:property value="currentPage"/>'">
							삭제
				</button>
			</td>
		</tr>
		</s:iterator>
	</table>
	<div align="center"><s:property value="pagingHtml" escape="false"/></div>
	
	<div id="search" align="center">
		<form>
			아이디<input type="checkbox" name="searchh" value="id" checked="checked">
			이름<input type="checkbox" name="searchh" value="name">&nbsp;
			이메일<input type="checkbox" name="searchh" value="email">&nbsp;
			여권번호<input type="checkbox" name="searchh" value="passport">&nbsp;
			<input type="text" name="search">
			<input type="submit" value="검색">
		</form>
	</div>
</div>

</body>
</html>