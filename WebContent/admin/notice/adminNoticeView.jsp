<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="service/noticeView.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<script src="js/bootstrap.js" type="text/javascript"></script>
</head>
<body>
<div id="content_sub_wrap">
			
	 
	<script type="text/javascript">
	function fnPrevDept(){
		$("#head_nav>ul li a").removeClass("on");
		$("#head_nav_dept ul").hide(0);
		$("#head_nav>ul li a:eq(5)").attr("class", "on");
		$(".head_dept06").show(0);
	}
	</script>
	<div id="left_nav">
		<div class="left_subject">고객센터</div>
		<ul>
			<li><a href="NoticeList.action">공지사항</a></li>
		</ul>
	</div>
	<div id="content_right">
		<div id="board_view">
			<div class="board_view_subject">
				<p class="board_view_subject_left"><s:property value="resultClass.subject"/></p>
				<p class="board_view_subject_right"><s:property value="resultClass.reg_date"/></p>
			</div>
			<div class="board_view_content">
				<p><s:property value="resultClass.content"/></p>
			</div>
			
			<div class="board_view_prev">
				<span>다음글</span>
				<a href="AdminNoticeView.action?notice_no=<s:property value="next.notice_no"/>&currentPage=<s:property value="currentPage"/>">
				<s:property value="next.subject"/></a>
			</div>
			<div class="board_view_next">
				<span>이전글</span>
				<a href="AdminNoticeView.action?notice_no=<s:property value="prev.notice_no"/>&currentPage=<s:property value="currentPage"/>">
				<s:property value="prev.subject"/></a>
			</div>
			
			<div class="board_view_botton">
			
			<button type="button" class="btn btn-default btn-xs"
			onclick="javascript:location.href='AdminNoticeModifyForm.action?currentPage=<s:property value="currentPage"/>&notice_no=<s:property value="resultClass.notice_no"/>'">수정</button>
			<button type="button" class="btn btn-default btn-xs"
			onclick="javascript:location.href='AdminNoticeDelete.action?currentPage=<s:property value="currentPage"/>&notice_no=<s:property value="resultClass.notice_no"/>'">삭제</button>
			<button type="button" class="btn btn-default btn-xs"
			onclick="javascript:location.href='AdminNoticeList.action?currentPage=<s:property value="currentPage"/>'">목록</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>