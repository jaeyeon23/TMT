<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<style>

#left_nav { padding-top: 55px; width: 185px; float: left; }
#left_nav>ul { border-top: 2px solid #283444; padding-bottom: 28px; }
#left_nav>ul>li { padding-left: 10px; height: 37px; border-bottom: 1px solid #e5e5e5; line-height: 37px; }
#left_nav>ul>li a { color: #737373; }
#left_nav>ul>li>a:hover, #left_nav>ul>li>a:hover>span { color: #283444; }

.left_subject { width: 175px; height: 43px; background: url('/resources/images/common/back_left.jpg'); padding: 20px 0 0 10px; font-size: 22px; color: #333333; letter-spacing: -1px; }

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

#board_view { padding-top: 30px; }
.board_view_subject { overflow: hidden; border-top: 2px solid #283444; border-bottom: 1px solid #283444; height: 42px; padding: 0 20px; line-height: 42px; }
.board_view_subject_left { float: left; color: #283444; }
.board_view_subject_right { float: right;  color: #6d6e72; }
.board_view_content { padding: 40px;  color: #6d6e72; line-height: 1.5; }
.tutorial_content { padding: 40px;  color: #6d6e72; line-height: 1.5; }
.photo_content { padding: 40px 0; }
.industrialEdu_content { padding: 40px 0; }
.board_view_prev { border-top: 1px solid #283444; border-bottom: 1px solid #ececec; background: url('/resources/images/common/point_view_prev.jpg'); background-repeat: no-repeat; padding-left: 42px; height: 40px; line-height: 38px; }
.board_view_next { border-bottom: 1px solid #283444; background: url('/resources/images/common/point_view_next.jpg'); background-repeat: no-repeat; padding-left: 42px; height: 40px; line-height: 38px; }
.board_view_prev span, .board_view_next span { margin-right: 38px; color: #283444; }
.board_view_prev a, .board_view_next a {  color: #6d6e72; }
.board_view_prev a:hover, .board_view_next a:hover {  color: #283444; }
.board_view_botton { text-align: right; padding: 10px 0 50px 0; height: 34px; overflow: hidden; }
.board_view_botton a { width: 69px; height: 34px; font-size: 12px; line-height: 34px; background: #283444; text-align: center; color: #fff; display: block; margin-left: 10px; float: right; }


</style>
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
				<p style="text-align: center;"><s:property value="resultClass.content"/></p><p style="text-align: left;"><br></p><p><br></p><p><br></p>
			</div>
			
			<div class="board_view_prev">
				<span>이전글</span><a href="/community/noticeView.kh?no=3459&amp;cpage=1&amp;classify=">KH정보교육원 강남지원 훈련이수자평가</a>
			</div>
			<div class="board_view_next">
				<span>다음글</span>다음글이 없습니다.
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