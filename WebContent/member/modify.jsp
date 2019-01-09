<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
		<s:form action="ModifyMember.action" method="post" enctype="multipart/form-data">
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
									value="${resultClass.name }">
							</div>
						</div>
						<div class="form-group">
							<div class="title text-middle">이메일</div>
							<div class="input-wrapper text-middle">
								<input class="form-control text-content" name="email"
									type="email" value="${resultClass.email }" readonly>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="title text-middle">연락처</div>
						<div class="input-wrapper text-middle">
							<input class="form-control text-content" name="tel" 
								type="text" value="${resultClass.tel }" >
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="title text-middle">비밀번호</div>
					<div class="input-wrapper text-middle">
						<input class="form-control text-content" name="password" 
							type="password" value="${resultClass.password }">
					</div>
				</div>
				<div class="form-group">
					<div class="title text-middle">여권번호</div>
					<div class="input-wrapper text-middle">
						<input class="form-control text-content" name="passport" 
							type="text" value="${resultClass.passport }">
					</div>
				</div>
				<div class="form-group">
					<div class="title text-middle">프로필</div>
					<div class="input-wrapper text-middle">
						<input type="file" name="upload">
					</div>
				</div>

	<br>
		<div class="form-btn-wrap">
			<div class="form-btn-container clearfix">
				<div class="btn--width-50">
					<button class="btn-new btn--type-gray btn--width-100 btn--size-sm"
						type="submit">정보 수정하기</button>						
				</div>
			</div>
		</div>
	</s:form>
</div>
</center>
</main>
</div>
</main>
</body>
</html>