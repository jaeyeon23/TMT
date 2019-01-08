<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.HashMap"%>
<link rel="stylesheet" href="/TMT/css/member/joinForm.css"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="javascript">
	function check() {

		var frm = document.findId;
		
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ID찾기</title>

</head>
<body>

<main class="member member-verify">
	<div class="container-fluid content-wrap with-panel-title">
		<div class="panel-title-wrapper">
			<h1><center><div class="panel-title">아이디 찾기</div></center></h1>
		</div>
		<div class="member-panel">
			<div class="panel-body">
				<form name="findId" action="FindId.action" role="form" onsubmit="return check()" data-validation="true" accept-charset="UTF-8" method="post" novalidate="novalidate" class="fv-form fv-form-bootstrap">
					<button type="submit" class="fv-hidden-submit" style="display: none; width: 0px; height: 0px;">
					</button>
					<input name="utf8" type="hidden" value="!">
						<input type="hidden" name="authenticity_token" value="5ysdT7Us4SP04bVPqREEzraPcEoAO+mPIKPfvArAy5CJrTsl5aB/VpIelg5F67bm1YeWsoxJ3lu9Wii9SGsHRg==">
							<div class="form-wrapper">
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
										<button class="btn-new btn--type-primary btn--width-100" type="submit">아이디 찾기</button><br>
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
