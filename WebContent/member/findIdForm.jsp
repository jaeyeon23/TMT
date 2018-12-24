<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.HashMap"%>
<link rel="stylesheet" href="/TMT/css/member/joinForm.css"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ID찾기</title>

</head>
<body>

<%-- 	<form action="FindId.action">
		<br>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td align="center" height="300">
					<table border="0">
						<tr>
							<td colspan="100%" align="center" class="title">아이디 찾기</td>
						</tr>
						<tr>
							<td height="30"/>
						</tr>
						
						<tr>
							<td height="5" colspan="2"></td>
						</tr>
						<tr>
							<td width="110" class="factors">이름&nbsp;<br/><br/>이메일&nbsp;
							</td>
							<td><input type="text" name="name"><br><br/>
							<input type="text" name="email"></td>
						</tr>
						<tr>
							<td height="10" colspan="2"></td>
						</tr>
						<tr>
							<td align="center">
							<input type="submit" value="  아이디 찾기  " class="button">
							</td>
							<s:if test='%{resultClass.id != null}'>
								<td class="result">RESULT&nbsp;:&nbsp;</td>
								<td align="left" class="result"><br> <b>${resultClass.name}</b>
									님의 ID는 <b>${resultClass.id}</b>입니다.<br>&nbsp;</td>
								<td align="middle">
									<a href="LoginForm.action" class="button">&nbsp;&nbsp;로그인폼으로&nbsp;&nbsp;</a>
								</td>
							</s:if>
							<s:else>
								<td></td>
								<td></td>
								<td align="middle">
									<a href="LoginForm.action" class="button">&nbsp;&nbsp;로그인폼으로&nbsp;&nbsp;</a>
								</td>
							</s:else>
						</tr>
						<tr>
							<td height="5" colspan="2"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form> --%>
	
	
<main class="member member-verify">
	<div class="container-fluid content-wrap with-panel-title">
		<div class="panel-title-wrapper">
			<h1><center><div class="panel-title">아이디 찾기</div></center></h1>
		</div>
		<div class="member-panel">
			<div class="panel-body">
				<form action="FindId.action" role="form" data-validation="true" accept-charset="UTF-8" method="post" novalidate="novalidate" class="fv-form fv-form-bootstrap">
					<button type="submit" class="fv-hidden-submit" style="display: none; width: 0px; height: 0px;">
					</button>
					<input name="utf8" type="hidden" value="!">
						<input type="hidden" name="authenticity_token" value="5ysdT7Us4SP04bVPqREEzraPcEoAO+mPIKPfvArAy5CJrTsl5aB/VpIelg5F67bm1YeWsoxJ3lu9Wii9SGsHRg==">
							<div class="form-wrapper">
								<div class="content-wrapper">
									<div class="form-group">
										<div class="content-title-box">
											<div class="sub-title">
												이름
											</div>
										</div>
											<div class="row">
												<div class="col-xs-12">
													<input class="form-control" name="name" placeholder="이름" type="text">
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
													<input class="form-control" name="email" placeholder="이메일" type="email">
												</div>
											</div>
									</div>
								</div>
								<div class="btn-wrap">
								<center><button class="btn-new btn--type-primary btn--width-100" type="submit">아이디 찾기</button></center>
								</div>
							</div>
					</form>

				</div>
			</div>
		</div>
	</main>
</body>
</html>
