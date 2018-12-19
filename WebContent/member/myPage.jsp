<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<script src="js/bootstrap.js" type="text/javascript"></script>
<style>
body{
    background-color:#EFEFEF;
}


</style>
<meta charset="EUC-KR">
<title>마이페이지</title>
</head>
<body>
<div>
<h2>프로필 관리</h2>
</div>
<div class="mypage">
<table size="80%" height="80%" width="40%" align="center" cellspacing="0" cellpadding="0"  >

<tr>
<td align="right" bgcolor="white" height="20">
  <input type="button" onclick="javascript:window.location='modify.jsp'" value="편집"/>
  </td>
  </tr>
  <tr>
    <td align="center" bgcolor="white" height="70">
    <img width=60 height=60></td>
  </tr>
 <tr>
  <td bgcolor="white"height="40">이름&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;홍길동</td>
  </tr>
   <tr>
  <td bgcolor="white"height="40">이메일&emsp;&emsp;&emsp;&emsp;&emsp;www.naver.com</td>
  </tr>
   <tr>
  <td bgcolor="white" height="40">연락처&emsp;&emsp;&emsp;&emsp;&emsp;132-456-789</td>
  </tr>
   <tr>
  <td bgcolor="white" height="40">비밀번호&emsp;&emsp;&emsp;&emsp;&emsp;*******</td>
  </tr>
   <tr>
  <td bgcolor="white" height="60">마켓팅수신동의&nbsp;&nbsp;&nbsp;e-mail:수신거부<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;sms:수신거부</td>
  </tr>
</table>
</div>
<form action="DeleteMemberCheck.jsp" name="Mdel" method="post">
 <table align="center">
  <tr>
   <td align="center">
     <input type="submit" value="계정삭제" onclick="alert('계정을 삭제하시겠습니까?')">
   </td>
  </tr>
</table>
</form>
</body>
</html>