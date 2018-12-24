<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.HashMap"%>
<link rel="stylesheet" href="/TMT/css/member/joinForm.css"/>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function validation(userinput){
	if(userinput.id.value==""){
		alert("아이디를 입력해주세요.");
		return false;
	}
	else if(userinput.password.value==""){
		alert("비밀번호를 입력해주세요.");
		return false;
	}
	return true;
}
</script>
<%-- <style>
.title {
	font-wight: 300;
	font-size: 30px;
	text-align:center;
	text-valign:center;
}
.login{
    background-color: rgba(249, 214, 169, 1);
    border: none;
    padding: 5px 0;
    text-align: center;
    margin: 3px;
    cursor: pointer;
    border-radius:5px;
    height:40px;
    width:400px;
    font-size:20px;
}
.find {
	font-size:18px;
	color:#000000;
}
</style>
<meta charset="UTF-8">
<title>TMT로그인</title>
</head>
<body>
<center>
	<form name="login" method="post" action="Login.action">
		<table width="70%" border="0" cellspacing="0" cellpadding="10px" align="middle">
			<tr>
				<td height="100" colspan="80%" class="title">회원로그인</td>
			</tr>
			
			<tr>

				<td align="right">아이디</td>
				<td align="center"><input type="text" name="id" size="17" width="100%"></td>

			</tr>

			<tr>
				<td align="right">비밀번호</td>
				<td align="center"><input type="password" name="password" size="17" width="100%"></td>
			</tr>
			<tr>
				<td width="100%" align="center" colspan="80%">
					<input type="submit" value="로그인" class="login">
				</td>
				</tr>
			<tr>
				<td width="100%" align="center" colspan="80%">
					<a href="FindIdForm.action" class="find">아이디 찾기</a>
					&nbsp;l&nbsp;
					<a href="FindPwForm.action" class="find">비밀번호 찾기</a>
					&nbsp;&nbsp;
				</td>
			</tr>
			<tr align="center" height="100">
				<td width="30%"/>
				<td colspan="3" valign="middle">
				아직 TMT의 회원이 아니신가요? <a href="JoinForm.action">회원가입</a></td>
				<td width="30%"/>
			</tr>
		</table>
	</form>
</center> --%>

<main class="member">
	<div class="container-fluid content-wrap">
		<div class="member-panel">
			<div class="panel-button">
				<div class="btn-wrap">
					<a class="btn-new btn--type-outline btn--width-100 btn-sns" href="https://www.myrealtrip.com/users/auth/naver">
						<img class="icon" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/naver-logo@2x-332865f7b796a02822378e0b61e6dcace93ae9a24abd810cd774a06b5fbcb0b5.png" width="18">
							<span>네이버 로그인</span>
					</a>
				</div>
			</div>
			<div class="panel-line clearfix">
				<hr class="divider">
					<div class="or">또는</div>
			</div>
			<div class="panel-body">
				<form role="form" data-validation="true" action="/users/sign_in" accept-charset="UTF-8" method="post" novalidate="novalidate" class="fv-form fv-form-bootstrap">
					<button type="submit" class="fv-hidden-submit" style="display: none; width: 0px; height: 0px;">
					</button>
						<input name="utf8" type="hidden" value="!">
							<input type="hidden" name="authenticity_token" value="HdyGn6lDCyP6XAzDepc/J7V4kCuV/VdL+BPC4BW/kJlzWqD1+c+VVpyjL4KWbY0P1nB20xmPYJ9l6jXhVxRcTw==">
								<div class="form-wrapper">
									<div class="content-wrapper">
										<div class="form-group clearfix">
											<div class="content-title-box">
												<div class="sub-title">아이디*</div>
											</div>
											<div class="row">
												<div class="col-xs-12">
														<input autocomplete="off" class="form-control" name="id" placeholder="아이디" title="이메일" type="아이디">
												</div>
											</div>
										</div>
									</div>
									<div class="content-wrapper">
										<div class="form-group">
											<div class="content-title-box">
												<div class="sub-title">비밀번호*</div>
											</div>
											<div class="row">
												<div class="col-xs-12">
													<input class="form-control" name="password" placeholder="비밀번호" title="비밀번호" type="password">
												</div>
											</div>
										</div>
									</div>
									<div class="content-wrapper">
										<div class="form-group">
											<div class="row row-margin">
												<div class="col-xs-6">
													<div class="find-id">
														<a href="FindIdForm.action">아이디 찾기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<a href="FindPwForm.action">비밀번호 찾기</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
						<div class="btn-wrap">
						<center>
							<button class="btn-new btn--type-primary btn--width-100" type="submit">
								<span>로그인</span>
							</button>
						</center>
						</div>
					</div>
				</form>
				</div>						
					<div class="panel-footer">
					<div class="footer-title">
						아직 마이리얼트립 회원이 아니신가요?&nbsp;
						<a href="JoinForm.action">회원가입</a>
					</div>
		</div>
	</div>
</main>

</body>
</html>