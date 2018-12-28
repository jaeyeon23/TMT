<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/TMT/css/member/joinForm.css"/>
<script type="text/javascript">
function check(){
	
	var f=document.join;
	
	if (f.id.value == "") {
		alert("아이디를 입력해주십시오");
		f.id.focus();
		return false;
	}
	if (f.id2.value == "") {
		alert("아이디 중복확인을 해주십시오");
		return false;
	}
	if (f.password.value == "") {
		alert("비밀번호를 입력해주십시오");
		f.password.focus();
		return false;
	}
	if (f.password.value != f.password2.value) {
		alert("비빌번호를 재입력 해주세요.");
		f.password2.focus();
		return false;
	}
	if (f.name.value == "") {
		alert("이름을 입력해주십시오");
		f.name.focus();
		return false;
	}
	if (f.tel.value == "") {
		alert("핸드폰번호를 입력해주십시오");
		f.tel.focus();
		return false;
	}
	if (f.email.value == "") {
		alert("이메일을 입력해주십시오");
		f.email.focus();
		return false;
	}
	if(f.passport.value==""){
		alert("여권번호를 입력해주십시오");
		f.passport.focus();
		return false;
	}
	if (f.passport2.value == "") {
		alert("여권번호 중복확인을 해주십시오");
		return false;
	}
	if (join.agreeUse.checked == false) {
		alert("이용약관, 개인정보 수집 및 이용에 모두 동의해 주시기 바랍니다.");
		return false;
	}

	if (join.agreePrivacy.checked == false) {
		alert("이용약관, 개인정보 수집 및 이용에 모두 동의해 주시기 바랍니다.");
		return false;
	}

}
function openConfirmId(){
	var url="ConfirmId.action?id="+document.join.id.value;
	var f=document.join;
	var idPs = /^[0-9a-zA-Z]{4,12}$/; //아이디 비밀번호 체크표현식
	if(f.id.value==""){
		alert("아이디를 입력해주세요.");
		f.id.focus();
		return false;
	}
	open(url,"confirmid","toolbar=no,location=no, status=no, menubar=no, scrollbars=yes, resizable=no, width=410, height=400");
}
/* function openConfirmEmail(){
	var url="EmailCheck.action?email="+document.join.email.value;
	var f=document.join;

	if(f.email.value==""){
		alert("이메일을 입력해주세요.");
		f.email.focus();
		return false;
	}
	open(url,"confirmemail","toolbar=no,location=no, status=no, menubar=no, scrollbars=yes, resizable=no, width=410, height=400");
} */
function chkBox(bool){
	var obj=document.getElementsByName("join");
	for(var i=0;i<obj.length;i++)
		obj[i].checked=bool;
}

</script>
<title>TMT회원가입</title>
</head>
<body>
<main class="member member-signup">
<div class="container-fluid content-wrap">
<form name="join" action="EmailCheck.action" method="post" onsubmit="return check()" class="fv-form fv-form-bootstrap">
	<div class="member-panel">	
		<div class="panel-button">
			<div class="btn-wrap">
				<a class="btn-new btn--type-outline btn--width-100 btn-sns" data-gtm-action="네이버로 회원가입" data-gtm-category="회원가입" href="https://www.myrealtrip.com/users/auth/naver">
					<img class="icon" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/naver-logo@2x-332865f7b796a02822378e0b61e6dcace93ae9a24abd810cd774a06b5fbcb0b5.png" width="18">
					<span>네이버 가입</span>
				</a>
			</div>
		</div>
		<div class="panel-line clearfix">
			<hr class="divider">
			<div class="or">또는</div>
		</div>
		<div class="panel-body">
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
								<input class="form-control" name="id" placeholder="아이디를 입력해주세요." title="아이디" type="text">
								<input type="button" name="id2" value=" 중복확인 " onclick="openConfirmId()" class="button">
							</div>
						</div>
					</div>
				</div>
				<div class="content-wrapper">
					<div class="form-group">
						<div class="content-title-box">
							<div class="sub-title">
								비밀번호
							</div>
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
						<div class="content-title-box">
							<div class="sub-title">
								비밀번호 확인
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<input class="form-control" name="password2" placeholder="비밀번호 확인" title="비밀번호확인" type="password">
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
								<input class="form-control" name="name" placeholder="이름을 입력해주세요." title="이름" type="text">
							</div>
						</div>
					</div>
				</div>
				<div class="content-wrapper">
					<div class="form-group">
						<div class="content-title-box">
							<div class="sub-title">
								전화번호
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<input class="form-control" name="tel" placeholder="전화번호를 입력해주세요." title="전화번호" type="text">
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
								<input autocomplete="off" class="form-control" name="email" placeholder="ID@example.com" title="이메일" type="email">
								<!-- <input type="button" name="emailChk" value="메일 인증" onclick="openConfirmEmail()" class="button"> -->
							</div>
						</div>
					</div>
				</div>
<!-- 				<div class="content-wrapper">
					<div class="form-group">
						<div class="content-title-box">
							<label class="sub-title" for="pwd">이메일</label>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<input autocomplete="off" class="form-control" name="email" placeholder="ID@example.com" title="이메일" type="email">
								<input type="button" name="emailChk" value="메일 인증" onclick="openConfirmEmail()" class="button">
							</div>
						</div>
					</div>
				</div> -->
				<div class="content-wrapper">
					<div class="form-group">
						<div class="content-title-box">
							<div class="sub-title">
								여권번호
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<input class="form-control" name="passport" placeholder="여권번호를 입력해주세요." title="여권번호" type="text">
							</div>
						</div>
					</div>
				</div>
				<div class="form-wrapper">
					<div class="btn-wrap">
						<button class="btn-new btn--type-primary btn--width-100" data-disable_with="회원가입" data-gtm-action="이메일 회원가입" data-gtm-category="회원가입" type="submit">회원가입</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
</div>
</main>
</body>
</html>