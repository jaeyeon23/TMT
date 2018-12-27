<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link rel="stylesheet" href="/TMT/css/member/joinForm.css"/>
<!DOCTYPE html>
<head>
<title>회원정보수정</title>
</head>
<body>

<div id="container">
	<div id="content">
		<div>
			<div>	
				<div>
					<center>
					<h4>이메일 인증 안내</h4>
						<div class="login_box">
								입력하신 이메일로 인증 메일을 발송하였습니다. 인증을 완료하셔야 회원 가입이 완료됩니다.<br><br>
							<button type="button" id="login_submit" onclick="javascript:location.href='LoginForm.action'" class="btn-new btn--type-primary btn--width-100">확인</button><br>
						</div>
					</center>	
				</div>
			</div>					
		</div>
	</div>

</div>

</body>
</html>

