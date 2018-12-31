<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/TMT/css/member/myPage.css"/>
<!DOCTYPE html>
<html>
<head>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<script src="../js/bootstrap.js" type="text/javascript"></script>

<script>
function removeCheck() {
	 if (confirm("정말 계정을 삭제하시겠습니까??") == true){    //확인
	    location.href="DeleteMember.action";
	 }else{   //취소
	    location.href="MyPage.action";
	 }
}
</script>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>

<div>
<h2>마이페이지</h2>

<main class="member-box box mode-readonly clearfix">
	<center>
		<div class="member-container with-edit-btn">
			<div class="content-wrapper">
				<div class="profile-img-container hide-on-tablet">
					<img width="98" class="img profile-img" src="https://d2ur7st6jjikze.cloudfront.net/profile_images/1387626/1387626_medium_1541323024.png?1541323024">
						<form class="profile-uploader" action="ModifyMember.action" method="post">
							<div class="camera-icon ladda-button" data-style="slide-up">
								<button type="submit" align="right" class="btn-new btn--type-outline btn--size-xs btn-modify">정보수정</button>
							</div>
						</form>
				</div>
				<br>
				<div class="member-wrapper">
					<div class="form-group">
						<div class="title text-middle">이름</div>
							<div class="input-wrapper text-middle">
								<s:property value="%{session.session_id}"/>
							</div>
						</div>
					<div class="form-group">
						<div class="title text-middle">이메일</div>
							<div class="input-wrapper text-middle">
								<s:property value="%{session.session_email}"/>
							</div>
					</div>
					<div class="form-group">
						<div class="title text-middle">연락처</div>
							<div class="input-wrapper text-middle">
								<s:property value="%{session.session_tel}"/>
							</div>
						</div>
					<div class="form-group">
						<div class="title text-middle">비밀번호</div>
							<div class="input-wrapper text-middle">
								<s:property value="%{session.session_password}"/>
							</div>
					</div>
					<div class="form-group">
						<div class="title text-middle">마케팅 수신동의</div>
							<div class="input-wrapper text-middle">
								<s:property value="%{resultClass.marketing1}"/>
							</div>
					</div>
					<br>
					<div class="text-clickable-container hide-on-mobile">
						<div class="text text-sm" >
							<button onclick="removeCheck()"class="btn-new btn--type-primary btn--width-100">계정 삭제하기</button>
						</div>
					</div>
			</div>
		</div>
	</div>
</center>
</main>

</body>
</html>