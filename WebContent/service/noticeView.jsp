<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="service/noticeView.css" rel="stylesheet">
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
				<p class="board_view_subject_left"><s:property value="notice.now.subject"/></p>
				<p class="board_view_subject_right"><s:property value="notice.now.reg_date"/></p>
			</div>
			<div class="board_view_content">
				<p><s:property value="notice.now.content"/></p>
			</div>
			
			<div class="board_view_prev">
				<span>다음글</span>
				<a href="NoticeView.action?notice_no=<s:property value="notice.next.notice_no"/>&currentPage=<s:property value="currentPage"/>">
				<s:property value="notice.next.subject"/></a>
			</div>
			<div class="board_view_next">
				<span>이전글</span>
				<a href="NoticeView.action?notice_no=<s:property value="notice.prev.notice_no"/>&currentPage=<s:property value="currentPage"/>">
				<s:property value="notice.prev.subject"/></a>
			</div>
			
			<div class="board_view_botton">
			<button type="button" class="btn btn-default btn-xs"
			onclick="javascript:location.href='NoticeList.action?currentPage=<s:property value="currentPage"/>'">목록</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>