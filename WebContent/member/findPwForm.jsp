<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>비밀번호 찾기 폼</title>
<link rel="stylesheet" href="/TMT/css/member/joinForm.css"/>
<%-- <style type="text/css">
.button{
    background-color: #F6E3CE;
    border: none;
    color:#000000;
    padding: 10px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 10px;
    cursor: pointer;
    border-radius:5px;
    height:70px;
    font-size:20px;
}
.button:hover{
	background-color: #F5D0A9;
	text-decoration:none;color:#F3683D;
}
</style> --%>

<script language="javascript">
	function check() {

		var frm = document.findPw;

		if (frm.id.value == "") {
			alert("아이디를 입력해주십시오.");
			frm.id.focus();
			return false;
		}
		if (frm.name.value == "") {
			alert("이름을 입력해주십시오.");
			frm.name.focus();
			return false;
		}
		if(frm.email.value==""){
			alert("이메일을 입력해주십시오.");
			frm.email.focus();
			return false;
		}
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

</head>

	<body>
<!-- 		<h1>비밀번호 찾기</h1>
			<form name="findPw" action="FindPw.action" method="post" onsubmit="return check()">
				<table>
					<tr>
						<td>아이디&nbsp;<input type="text" name="id"> &nbsp;
						<a href="FindIdForm.action">ID가 기억이 안나시나요?</a>
						</td>
					<tr>
						<td>이름&nbsp;<input type="text" name="name" /></td>
					</tr>
					<tr>
						<td>전화번호&nbsp;<input type="text" name="tel" /></td>
					</tr>
					<tr>
						<td>이메일&nbsp;<input type="text" name="email" /></td>
					</tr>
				</table>
		<br>
		<br>
		<input type="submit" value="찾기" class="button" />&nbsp;
		<input type="button" value="취소" class="button" onclick="location.href='LoginForm.action'" />
		<br>
		<br>
		</form> -->

<main class="member member-verify">
	<div class="container-fluid content-wrap with-panel-title">
		<div class="panel-title-wrapper">
			<h1><center><div class="panel-title">비밀번호 찾기</div></center></h1>
		</div>
		<div class="member-panel">
			<div class="panel-body">
				<form name="findPw" action="FindPw.action" method="post" onsubmit="return check()" data-validation="true" accept-charset="UTF-8" method="post" novalidate="novalidate" class="fv-form fv-form-bootstrap">
					<button type="submit" class="fv-hidden-submit" style="display: none; width: 0px; height: 0px;">
					</button>
					<input name="utf8" type="hidden" value="!">
						<input type="hidden" name="authenticity_token" value="5ysdT7Us4SP04bVPqREEzraPcEoAO+mPIKPfvArAy5CJrTsl5aB/VpIelg5F67bm1YeWsoxJ3lu9Wii9SGsHRg==">
							<div class="form-wrapper">
								<div class="content-wrapper">
									<div class="form-group">
										<div class="content-title-box">
											<div class="sub-title">
												아이디
											</div>
										</div>
											<div class="row">
												<div class="col-xs-12">
													<input class="form-control" name="id" placeholder="아이디" type="text">
												</div>
											</div>
									</div>
								</div>
								<div class="content-wrapper">
									<div class="form-group">
										<div class="content-title-box">
											<div class="sub-title">
												이름
											</div>
										</div>
											<div class="row">
												<div class="col-xs-12">
													<input class="form-control" name="name" placeholder="이름" type="text">
												</div>
											</div>
									</div>
								</div>
								<div class="content-wrapper">
									<div class="form-group">
										<div class="content-title-box">
											<div class="sub-title">
												이메일
											</div>
										</div>
											<div class="row">
												<div class="col-xs-12">
													<input class="form-control" name="email" placeholder="이메일" type="email">
												</div>
											</div>
									</div>
								</div>
								<div class="btn-wrap">
								<center>
									<button class="btn-new btn--type-primary btn--width-100" type="submit">비밀번호 찾기</button><br>
								</center>
								</div>
								<div class="panel-footer">
									<div class="footer-title">
										이전 페이지로 돌아갑니다!&nbsp;&nbsp;
										<a href="LoginForm.action">로그인</a>
									</div>
								</div>
							</div>
					</form>
				</div>
			</div>
		</div>
	</main>
	</body>
</html>