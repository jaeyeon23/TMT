<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link rel="stylesheet" media="screen" href="css/admin/view1.css" />
<link rel="stylesheet" media="all" href="css/admin/view2.css" />
<link rel="stylesheet" media="screen" href="css/admin/view3.css" />
<%-- <script>
function check(){
	
	var f=document.d;
	
	if (f.searchh.value == "") {
		alert("비밀번호를 입력해주십시오");
		return false;
	}
}
</script> --%>
</head>
<body>

<div class="resp-container--row ">
	<hr>
	<br>
	<table class="table" border="0" width="100%" cellpadding="0" cellspacing="0">
	    <tr height=26>
			<th width="5%"><font size="2">번호</font></th>
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
				<s:if test="admin==1">
					<b>관리자</b>
				</s:if>
				<s:else>
					<s:property value="id"/>
				</s:else>
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
				<s:if test="admin!=1 || session.session_id==id">
				<button type="button" class="btn btn-default btn-sm" 
				onclick="location.href='AdminMemberView.action?id=<s:property value="id"/>&currentPage=<s:property value="currentPage"/>'">
							상세보기
				</button>
				</s:if>
				<s:if test="admin!=1">
					<button type="button" class="btn btn-default btn-sm" 
					onclick="location.href='AdminMemberModifyForm.action?id=<s:property value="id"/>&currentPage=<s:property value="currentPage"/>'">
								수정
					</button>
					<button type="button" class="btn btn-default btn-sm" 
					onclick="location.href='AdminMemberDelete.action?id=<s:property value="id"/>&currentPage=<s:property value="currentPage"/>&search=<s:property value="search"/>&searchh=<s:property value="searchh"/>'">
								삭제
					</button>
				</s:if>
			</td>
		</tr>
		</s:iterator>
	</table>
	<div align="center"><s:property value="pagingHtml" escape="false"/></div>
	
	<div id="search" align="center">
		<form name="d">
			아이디<input type="checkbox" name="searchh" value="id" checked="checked">
			이름<input type="checkbox" name="searchh" value="name">&nbsp;
			이메일<input type="checkbox" name="searchh" value="email">&nbsp;
			여권번호<input type="checkbox" name="searchh" value="passport">&nbsp;
			<input type="text" name="search">
			<input type="submit" onclick="return check()" value="검색">
		</form>
	</div>
</div>

</body>
</html>