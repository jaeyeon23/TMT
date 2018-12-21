<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ID찾기</title>
<style>

.title{
	font-size:30px;
}
.factors{
	font-size:20px;
}

.result{
	font-size:20px;
}
/* 아이디 찾기 버튼 */
.button{
    background-color: #F6E3CE;
    border: none;
    color:#000000;
    padding: 4px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 2px;
    cursor: pointer;
    border-radius:5px;
    height:70px;
    font-size:20px;
}
.button:hover{
	background-color: #F5D0A9;
	text-decoration:none;color:#F3683D;
}
</style>

</head>
<body>

	<form action="FindId.action">
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
	</form>
</body>
</html>
