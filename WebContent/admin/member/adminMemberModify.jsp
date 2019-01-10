<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<link rel="stylesheet" href="/TMT/css/member/myPage.css" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/TMT/css/member/myPage.css"/>
<script>
function modifyCheck() {
	 if (confirm("정말 계정을 수정하시겠습니까??") == true){    //확인
	    location.href="ModifyMember.action";
	 }else{   //취소
	    location.href="MyPage.action";
	 }
}
function check(){
	
	var f=document.modify;
	
	if (f.password.value == "") {
		alert("비밀번호를 입력해주십시오");
		f.password.focus();
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
	
}
</script>

<main class="traveler">
<div class="traveler-container clearfix">
	<div class="sidebar-heading">프로필 수정</div>
	<div class="traveler-sidebar">
		<div class="sidebar-wrapper">
			<div class="profile-container box">
				<div class="profile">
					<s:if test="%{resultImage.mem_image == null}">
						<img alt="여행자 사진" class="img-circle" src="https://d2ur7st6jjikze.cloudfront.net/profile_images/1387626/1387626_medium_1541323024.png?1541323024" width="80">
					</s:if>
					<s:else>
						<img alt="여행자 사진" class="img-circle" src="/TMT/upload/mem_image/<s:property value='%{resultImage.mem_image}' />" width="80">
					</s:else>
				</div>
				<br><br>
				<div class="username">
					<h4><s:property value="%{id}"/>&nbsp;&nbsp;회원님</h4>
				</div>
			</div>
		</div>
	</div>
<main class="member-box box mode-readonly clearfix">
	<center>
		<form action="AdminMemberModify.action" name="modify" class="fv-form fv-form-bootstrap" >
			<input type="hidden" name="id" value="<s:property value="%{id}"/>">
			<input type="hidden" name="currentPage" value="<s:property value="%{currentPage}"/>">
			<div class="member-container with-edit-btn">
				<div class="content-wrapper">
					<div class="profile-img-container hide-on-tablet">
						<img width="98" class="img profile-img"
							src="https://d2ur7st6jjikze.cloudfront.net/profile_images/1387626/1387626_medium_1541323024.png?1541323024">
					</div>
					<br>
					<div class="member-wrapper">
						<div class="form-group">
							<div class="title text-middle">이름</div>
							<div class="input-wrapper text-middle">
								<input class="form-control text-content" name="name" type="text"
									value="<s:property value="%{resultClass.name}"/>">
							</div>
						</div>
						<div class="form-group">
							<div class="title text-middle">이메일</div>
							<div class="input-wrapper text-middle">
								<input class="form-control text-content" name="email"
									type="email" value="<s:property value="%{resultClass.email}"/>">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="title text-middle">연락처</div>
						<div class="input-wrapper text-middle">
							<input class="form-control text-content" name="tel" 
								type="text" value="<s:property value="%{resultClass.tel}"/>">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="title text-middle">비밀번호</div>
					<div class="input-wrapper text-middle">
						<input class="form-control text-content" name="password" 
							type="password" placeholder="변경할 비밀번호를 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<div class="title text-middle">여권번호</div>
					<div class="input-wrapper text-middle">
						<input class="form-control text-content" name="passport" 
							type="text" value="<s:property value="%{resultClass.passport}"/>">
					</div>
				</div>
	<br>
		<div class="form-btn-wrap">
			<div class="form-btn-container clearfix">
				<div class="btn--width-50">
					<button class="btn btn-default btn-sm" onclick="return check()" type="submit">정보 수정하기</button>			
					<button type="button" onclick="history.back()" class="btn btn-default btn-sm" >취소</button>			
				</div>
			</div>
		</div>
	</form>
</div>
</center>
</main>
</div>
</main>
</body>
</html>