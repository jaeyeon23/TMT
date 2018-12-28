<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/TMT/css/member/joinForm.css"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 성공</title>
</head>
<body>
	<div id="container">
	<div id="content">
		<div>
			<div>	
				<div>
					<center>
					<h4>회원가입이 완료되었습니다.</h4>
						<div class="login_box">
								TMT의 회원이 되신걸 환영합니다!&nbsp;&nbsp;<b>${id}</b>님<br><br>
							<button type="button" onclick="javascript:location.href='LoginForm.action'" class="btn-new btn--type-primary btn--width-100">확인</button><br>
						</div>
					</center>	
				</div>
			</div>					
		</div>
	</div>

</div>
</body>
</html>