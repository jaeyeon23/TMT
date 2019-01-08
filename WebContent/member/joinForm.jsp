<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE link PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="/TMT/css/member/joinForm.css"/>
<html>
<head>
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
 					<div class="content-wrapper">
						<div class="form-group clearfix agreements-container">
							<div class="row">
								<div class="col-xs-12">
									<div class="checkbox-signup-wrapper" id="signupCheckboxGroup">
										<div class="checkbox-signup form-group checkbox-custom checkbox-primary">
											<input name="marketing1" id="marketing1" type="checkbox"  >
												<label for="checkAgree"> 
													회원가입 및 운영약관
												</label>
												<div class="terms-text" data-title="회원가입 및 운영약관">
												<textarea rows="10" cols="90%" style="margin: 0px; width: 350px; height: 50px;" readonly="readonly"> 회원가입 및 운영약관&#10;제 1 조 (목적)이 약관은 주식회사 TMT(이하 "당사"이라 합니다)이 운영하는 웹사이트(https://www.TMT.com) 및 어플리케이션(Application, 이하 웹사이트와 어플리케이션을 통칭하여 “TMT 플랫폼”)에서 제공하는 서비스(이하 "서비스"라 합니다)를 이용함에 있어 “당사”와 이용자의 권리 및 의무 및 책임사항을 규정함을 목적으로 합니다.</textarea>
												</div>
												<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="checkbox_agree">
												약관 동의에 체크해 주세요.</small>
										</div>
										
										<div class="checkbox-signup form-group checkbox-custom checkbox-primary">
											<input name="marketing2" id="marketing2" type="checkbox"  >
												<label for="checkAgree"> 
													개인정보 수집 및 이용
												</label>
												<div class="terms-text" data-title="개인정보 수집 및 이용">
												<textarea rows="10" cols="90%" style="margin: 0px; width: 350px; height: 50px;" readonly="readonly">개인정보 수집 및 이용&#10;개인정보 수집 및 이용 주식회사 TMT (이하 “당사”)은 고객의 개인정보를 중요시하며, 개인정보의 보호와 관련하여 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 및 「개인정보 보호법」 등 관련법 상의 개인정보 보호 규정을 준수하고 있으며, 당사는 고객(가이드 포함)이 당사의 개인정보 처리방침의 내용에 대하여 「동의」버튼 또는 「취소」버튼을 클릭할 수 있는 절차를 마련하여, 「동의」버튼을 클릭하면 개인정보 수집 및 이용 등 아래 개인정보 처리방침에 대해 동의한 것으로 봅니다.</textarea>
												</div>
												<small class="help-block" style="display: none;">
												개인정보수집 동의에 체크해 주세요.</small>
										</div>		
										<div class="form-wrapper">
											<div class="btn-wrap">
												<button class="btn-new btn--type-primary btn--width-100" data-disable_with="회원가입" data-gtm-action="이메일 회원가입" type="submit">
													회원가입
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
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