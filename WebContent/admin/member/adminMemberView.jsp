<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/TMT/css/member/myPage.css"/>
<script>
function removeCheck() {
	 if (confirm("정말 계정을 삭제하시겠습니까??") == true){    //확인
	    location.href='AdminMemberDelete.action?id=<s:property value="%{id}"/>';
	 }
}
</script>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<main class="traveler">
<div class="traveler-container clearfix">
	<div class="extra-button">
		<a class="btn-new btn--size-xs btn--type-gray" href="AdminMemberModifyForm.action?id=<s:property value="%{id}"/>&currentPage=<s:property value="%{currentPage}"/>">정보수정</a>
	</div>
	<div class="sidebar-heading">프로필 관리</div>
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

<div>



<main class="member-box box mode-readonly clearfix">
	<center>
		<div class="member-container with-edit-btn">
			<div class="content-wrapper">
				<div class="profile-img-container hide-on-tablet">
					<s:if test="%{resultImage.mem_image == null}">
						<img width="98" class="img profile-img" src="https://d2ur7st6jjikze.cloudfront.net/profile_images/1387626/1387626_medium_1541323024.png?1541323024">
					</s:if>
					<s:else>
						<img width="98" class="img profile-img" src="/TMT/upload/mem_image/<s:property value='%{resultImage.mem_image}' />"/>
					</s:else>
				</div>
				<br>
				<div class="member-wrapper">
					<div class="form-group">
						<div class="title text-middle">이름</div>
							<div class="input-wrapper text-middle">
								<s:property value="%{resultClass.name}"/>
							</div>
					</div>
					<div class="form-group">
						<div class="title text-middle">이메일</div>
							<div class="input-wrapper text-middle">
								<s:property value="%{resultClass.email}"/>
							</div>
					</div>
					<div class="form-group">
						<div class="title text-middle">연락처</div>
							<div class="input-wrapper text-middle">
								<s:property value="%{resultClass.tel}"/>
							</div>
					</div>
					<div class="form-group">
						<div class="title text-middle">비밀번호</div>
							<div class="input-wrapper text-middle">
								<s:property value="%{resultClass.password}"/>
							</div>
					</div>
					<div class="form-group">
						<div class="title text-middle">마케팅 수신동의</div>
							<div class="input-wrapper text-middle">
								<s:if test="%{resultClass.marketing1 == null}">
									거절
								</s:if>
								<s:else>
									동의
								</s:else>
							</div>
					</div>
				</div>
			</div>
		</div>
	<br>
	<div class="text-clickable-container hide-on-mobile">
		<div class="text text-sm" >
			<button onclick="removeCheck()" class="btn btn-default btn-sm" >계정 삭제하기</button>
		</div>
	</div>
</center>
</main>
</div>
</main>
</body>
</html>