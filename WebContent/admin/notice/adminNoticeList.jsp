<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet"> 
<style>

#left_nav { padding-top: 55px; width: 185px; float: left; }
#left_nav>ul { border-top: 2px solid #283444; padding-bottom: 28px; }
#left_nav>ul>li { padding-left: 10px; height: 37px; border-bottom: 1px solid #e5e5e5; line-height: 37px; }
#left_nav>ul>li a { color: #737373; }
#left_nav>ul>li>a:hover, #left_nav>ul>li>a:hover>span { color: #283444; }

.left_subject { width: 175px; height: 43px; background: url('/resources/images/common/back_left.jpg'); padding: 20px 0 0 10px; font-size: 22px; color: #333333; letter-spacing: -1px; padding-bottom: 28px; }

#left_num { overflow: hidden; padding-bottom: 50px; }
#left_num img { float: left; }
#left_num p { padding-top: 5px;, float: left; background: url('/resources/images/common/sub_left_num.png') no-repeat; padding-left: 65px; height: 56px;}
.left_num_intro {  color: #3a3a3a; font-weight: 700; }
.left_num_time { font-size: 11px; color: #a8a8a8; line-height: 14px; }
.left_num { font-size: 18px; font-weight: 900; color: #fa5c3f; font-family: Tahoma, 'Nanum Gothic', '돋움', Dotum, sans-serif; line-height: 15px; }

/* 교육과정 좌측내비 */
.edu .left_subject { width: 200px; }
#left_nav.edu>ul { width: 200px; }
#left_nav ul .depth { padding: 15px 0 15px 10px; line-height: 15px; *padding: 15px 0 10px 10px; background: url('/resources/images/sub02/sub02_left_off.jpg'); background-repeat: no-repeat; background-color: #fff; background-position: center right; height: auto; }
#left_nav ul .on { background: url('/resources/images/sub02/sub02_left_on.jpg'); background-repeat: no-repeat; background-color: #fff; background-position: center right; }
#left_nav ul .subdepth { padding: 15px 10px 15px 10px; line-height: 15px; height: auto; background: #f8f8f8; display: none; }
#left_nav .subdepth p { color: #283444; padding-bottom: 5px; }
#left_nav .subdepth>ul { padding-bottom: 20px; }
#left_nav .subdepth>ul:last-child { padding-bottom: 0; }
#left_nav .subdepth>ul>li { padding-left: 6px; background: url('/resources/images/sub02/sub02_leftdot_off.jpg'); background-repeat: no-repeat; background-position: top left; }
#left_nav .subdepth>ul>li a { font-size: 12px; display: block; margin-bottom: 4px; }
#left_nav .subdepth>ul>li a:hover { color:#5dbef5; }
#left_nav .subdepth>ul>li:last-child a { margin-bottom: 0; }
#left_nav .subdepth>ul>li ul { padding-bottom: 5px; }
#left_nav .subdepth>ul>li ul li a { font-size: 11px; color: #9c9c9c; }
#left_nav ul .subdepth:last-child>ul>li { padding-bottom: 15px; }
#left_nav ul .subdepth:last-child>ul>li:last-child { padding-bottom: 0; }

#content_right { width: 796px; float: right; padding-top: 55px; min-height: 600px; }

#content_sub { margin-top: -1px; width: 100%; margin: 0 auto; background: #fff; position: relative; margin-top: 15px; /*border-bottom: 1px solid #e9e9e9;*/ }
#content_sub_wrap { width: 1060px; margin: 0 auto; overflow: hidden; }
.dotted { height: 1px; background: url('/resources/images/common/point_bar.png'); }
.dotted_y { width: 1px; background: url('/resources/images/common/point_bar_y.png'); }
textarea { resize: none; }


</style>
<link href="/service/notice.css" rel="stylesheet"> 
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
	</div>
</div>
</body>
</html>