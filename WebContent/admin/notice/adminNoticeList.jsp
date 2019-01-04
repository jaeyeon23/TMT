<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet"> 
<link href="service/notice.css" rel="stylesheet"> 
<script src="js/bootstrap.js" type="text/javascript"></script>


</head>
<body>

<div class="#left_nav">
		<div id="content_sub" onmouseover="fnPrevDept();">
	<div id="content_sub_wrap">
		
<script type="text/javascript">
function fnPrevDept(){
	$("#head_nav>ul li a").removeClass("on");
	$("#head_nav_dept ul").hide(0);
	$("#head_nav>ul li a:eq(8)").attr("class", "on");
	$(".head_dept09").show(0);
}
</script>
<div id="left_nav">
	<div class="left_subject">고객센터</div>
	<ul>
		<li><a href="AdminNoticeList.action">공지사항</a></li>
	</ul>
</div>
<div id="content_right">
	<div class="subject">
		<span>공지</span>
		<button type="button" class="btn btn-default btn-xs"
			onclick="javascript:location.href='AdminNoticeWriteForm.action'">글쓰기</button>
	</div>
	<table class="table table-hover" style="width:90%">
	
		<tbody><tr>
			<th width="7%">번호</th>
			<th width="68%">제목</th>
			<th width="10%">조회수</th>
			<th width="15%">작성일</th>
		</tr>
		
		<s:iterator value="list" status="stat">
		<s:url id="viewURL" action="AdminNoticeView"><!--  -->
			<s:param name="notice_no" value="notice_no"/><!--  -->
			<s:param name="currentPage" value="currentPage"/><!--  -->
		</s:url><!--  -->
		<tr bgcolor="#FFFFFF" align="center">
			<td><s:property value="notice_no"/></td>
			<td align="left">
				<s:a href="%{viewURL}"><s:property value="subject"/></s:a>
			</td>
			<td><s:property value="readcount"/></td>
			<td><s:property value="reg_date"/></td>
		</tr>
	</s:iterator>
	<s:if test="list.size() <= 0">
		<tr bgcolor="#FFFFFF" align="center">
			<td colspan="4">등록된 게시물이 없습니다</td>
		</tr>
	</s:if>
	<tr align="center">
		<td colspan="5"><s:property value="pagingHtml" escape="false"/></td>
	</tr>
	
	</tbody>
	</table>
	</div></div></div>
</div>
</body>
</html>