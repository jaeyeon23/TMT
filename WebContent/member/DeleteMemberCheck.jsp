<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<script src="../js/bootstrap.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계정 삭제</title>
</head>
<body>
	<div style="padding: 150px;">
		<table align="center">
			<tr>
				<td colspan=2>
					<p align="center">
					<form action="Main.action" method="post">

						<table class="table table-bordered" align="center" width="70%">
							<tr>
								<th align="center" colspan="2">
									<font size="4">
										<b>회원탈퇴</b>
									</font>
								</th>
							</tr>
							<tr>
								<td align="center" width="200">
									<font size="2">아이디</font>
								</td>
								<td align="center">
									<s:property value="%{session.session_id}" />
								</td>
							</tr>
							<tr>
								<td align="center" width="200">
									<font size="2">비밀번호</font>
								</td>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
									<input type="password" name="password" />
								</td>
							</tr>
							<tr>
								<td align="center" colspan="2">
									<button type="submit" alt="탈퇴되셨습니다.">회원탈퇴</button>
									<button type="reset" onclick=history.go(-1)>취소</button>
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>