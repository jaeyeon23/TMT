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
	    location.href="DeleteMemberForm.action";
	 }else{   //취소
	    location.href="MyPage.action";
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
		<a class="btn-new btn--size-xs btn--type-gray" href="ModifyMemberForm.action">정보수정</a>
	</div>
	<div class="sidebar-heading">프로필 관리</div>
	<div class="traveler-sidebar">
		<div class="sidebar-wrapper">
			<div class="profile-container box">
				<div class="profile">
					<img alt="여행자 사진" class="img-circle" src="https://d2ur7st6jjikze.cloudfront.net/profile_images/1387626/1387626_medium_1541323024.png?1541323024" width="80">
				</div>
				<br><br>
				<div class="username">
					<h4><s:property value="%{session.session_id}"/>&nbsp;&nbsp;회원님</h4>
				</div>
			</div>
			<div class="promotion-container box clearfix">
				<div class="item">
					<div class="item-header text-md">
						나의 예약내역
							<a href="OrderList.action">
								<p align="right">확인하기
							<img class="arrow" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/ic-arrow-right-xs@2x-b290f6804f2f002ced664adc4c5e63a59629269d2e6657184239261195f22147.png" width="16">
							</p>
						</a>
					</div>
						<div class="item-header text-md">
						나의 위시리스트
							<a href="BasketList.action">
								<p align="right">확인하기
							<img class="arrow" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/ic-arrow-right-xs@2x-b290f6804f2f002ced664adc4c5e63a59629269d2e6657184239261195f22147.png" width="16">
							</p>
						</a>
					</div>	
				</div>
			</div>
		</div>
	</div>
<main class="member-box box mode-readonly clearfix">
	<center>
		<div class="member-container with-edit-btn">
			<div class="content-wrapper">
				<div class="profile-img-container hide-on-tablet">
					<img width="98" class="img profile-img" src="https://d2ur7st6jjikze.cloudfront.net/profile_images/1387626/1387626_medium_1541323024.png?1541323024">
					test : <s:property value="%{resultImage.mem_image}"/>
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
					<%-- <div class="form-group">
						<div class="title text-middle">비밀번호</div>
							<div class="input-wrapper text-middle">
								<s:property value="%{resultClass.password}"/>
							</div>
					</div> --%>
					<div class="form-group">
						<div class="title text-middle">여권번호</div>
							<div class="input-wrapper text-middle">
								<s:property value="%{resultClass.passport}"/>
							</div>
					</div>
				</div>
			</div>
		</div>
	<br>
	<div class="text-clickable-container hide-on-mobile">
		<div class="text text-sm" >
			<button onclick="removeCheck()" class="btn-new btn--type-primary btn--width-100">계정 삭제하기</button>
		</div>
	</div>
</center>
</main>
</div>
</main>
</body>
</html>