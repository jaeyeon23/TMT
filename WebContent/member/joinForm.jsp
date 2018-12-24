<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.HashMap"%>
<link rel="stylesheet" href="/TMT/css/member/joinForm.css"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- <style>
	.factor{
	align:left;
	width:15%;
	FONT-SIZE: 15pt;
	}
	.notice{
	width:20%;
	valign:middle;
	font-size:15pt;
	}
	.term{
	font-family:;
	color:;
	resize:none;
	background-color:#FBF8EF;
	border:0;
	}
	.title{
	FONT-SIZE: 20pt;
	}
	.agree{
	font-size:13pt;
	}
	.regButton{
    background-color:rgba(249, 214, 169, 1);
    border: none;
    color:#000000;
    padding: 5px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 3px;
    cursor: pointer;
    border-radius:5px;
    width:100;
    font-size:20px;
	}	
	.regButton:hover{
	background-color: #F5D0A9;
	}
</style> --%>
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
		f.password2.select();
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
function openConfirmPassport(){
	var url="passportCheck.action?id="+document.join.passport.value;
	var f=document.join;

	if(f.passport.value==""){
		alert("여권번호를 입력해주세요.");
		f.passport.focus();
		return false;
	}
	open(url,"confirmpassport","toolbar=no,location=no, status=no, menubar=no, scrollbars=yes, resizable=no, width=410, height=400");
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
<%-- <center>
		<form name="join" action="Join.action" method="post" onsubmit="return check()">
			<table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
											
						
				
				<tr>
					회원가입
				</tr>				
							
				
						
				<tr>
					<td>아이디</td>
					<td>
						<input type="text" name="id">
						<input type="button" name="id2" value=" 중복확인 " onclick="openConfirmId()" class="button">
					</td>
					<td class="notice">영문/숫자를 이용하여 4~12자로 입력하세요</td>
				</tr>	
						
				<tr>
					<td>비밀번호</td>
					<td>
						<input type="password" name="password"></td>
						<td>영문/숫자를 이용하여 4~12자로 입력하세요</td>
				</tr>
							
				<tr>
					<td>비밀번호 재확인</td>
					<td>
					<input type="password" name="password2" size="28" placeholder="비밀번호를 재입력 해주십시오"></td>
				</tr>			
	
				<tr>
					<td height="30" colspan="100%">&nbsp;</td>
				</tr>			
				<tr>
					<td class="factor">이름</td>
					<td>
					<input type="text" name="name" size="28"></td>
					<td class="notice">회원가입 후 수정이 불가능합니다</td>
				</tr>
								
				<tr>
					<td height="30" colspan="100%">&nbsp;</td>
				</tr>
				<tr>
					<td class="factor">전화번호</td>
					<td>
					<input type="text" name="tel" size="28"></td>
					<td class="notice">"-" 없이 숫자만 입력하세요</td>
				</tr>
				
				<tr>
					<td height="30" colspan="100%">&nbsp;</td>
				</tr>
				<tr>
					<td class="factor">이메일</td>
					<td>
					<input type="text" name="email" size="28" placeholder="______________ @ ______________">&nbsp;&nbsp;&nbsp;
					<input type="button" name="emailChk" value="메일 인증" onclick="openConfirmEmail()" class="button"></td>
					<td class="notice">이메일 형식에 맞춰 입력해 주세요</td>
				</tr>
				
				<tr>
					<td height="30" colspan="100%">&nbsp;</td>
				</tr>
				<tr>
					<td class="factor">여권번호</td>
					<td>
					<input type="text" name="passport" size="28">&nbsp;&nbsp;&nbsp;
					<!--  <input type="button" name="passport2" value=" 중복확인 " onclick="openConfirmPassport()" class="button"></td>-->
				</tr>
				
				<tr>
					<td height="50">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="100%" height="3" bgcolor="black"/>
				</tr>
	
				<tr>
					<td height="10">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="100%" height="40" align="center"><font size="5" >주요 정책 및 이용 방법</font>
					</td>
				</tr>
				
				<tr>
					<td height="10">&nbsp;</td>
				</tr>
				
				<tr>
					<td colspan="100%" height="3" bgcolor="black"/>
				</tr>
	
				<tr>
					<td height="40">&nbsp;</td>
				</tr>
				
				<tr>
					<td colspan="100%" align="right">
					<label for="agreeAll">
							<strong class="agree">이용약관, 개인정보 수집 및 이용에 모두 동의합니다.</strong>
							<input type="checkbox" id="agreeAll" value="" class="checkbox" onclick=chkBox(this.checked) />
					</label>
					</td>
				</tr>
				<tr>
					<td height="90">&nbsp;</td>
				</tr>

				
				<tr>
					<td colspan="100%" align="middle" class="title">이용약관</td>
				</tr>
				
				<tr>
					<td height="20">&nbsp;</td>
				</tr>	
				<tr>
					<td align="center" colspan="100%">
					<textarea readonly="readonly" rows="10" cols="120" class="term">
					!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!이용약관 들어가는 곳!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
					</textarea>
					</td>
				</tr>
				<tr>
					<td height="10">&nbsp;</td>
				</tr>
				
				<tr>
					<td colspan="100%" height="60" valign="top" align="right">
					<label for="agreePrivacy" class="agree"> 개인정보수집, 이용 동의에 동의합니다. 
					<input type="checkbox" id="agreePrivacy" name="join" value="" class="checkbox" />
					</label>
					</td>
				</tr>
				<tr>
					<td colspan="100%" align="center">
					<input type="submit" value=" 회원가입 " class="regButton" >
						&nbsp;&nbsp;&nbsp;&nbsp; 
						<a href="Main.action" class="regButton">&nbsp;&nbsp;취소&nbsp;&nbsp;</a></td>
				</tr>
				<tr>
					<td height="50">&nbsp;</td>
				</tr>
				
			</table>
		</form>
	</center> --%>
	
	
	
	
	<!-- ///////////////////////////// -->
<main class="member member-signup">
<div class="container-fluid content-wrap">
<form name="join" action="Join.action" method="post" onsubmit="return check()" class="fv-form fv-form-bootstrap">
	<div class="member-panel">
	
		<div class="panel-button">
			<div class="btn-wrap">
				<a class="btn-new btn--type-outline btn--width-100 btn-sns" data-gtm-action="네이버로 회원가입" data-gtm-category="회원가입" href="https://www.myrealtrip.com/users/auth/naver">
					<img class="icon" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/naver-logo@2x-332865f7b796a02822378e0b61e6dcace93ae9a24abd810cd774a06b5fbcb0b5.png" width="18">
					<span>네이버회원가입</span>
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
								<input type="button" name="emailChk" value="메일 인증" onclick="openConfirmEmail()" class="button">
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



	<!-- ////////////////////////////////// -->	
	
	
</body>
</html>