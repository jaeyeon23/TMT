<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<script src="../js/bootstrap.js" type="text/javascript"></script>

<meta charset="UTF-8">
<title>마이페이지 수정</title>
</head>
<body>
<div>
<h2>프로필 수정</h2>
</div>
<form class="form-horizontal">
<table size="80%" align="center"height="80%" width="40%" cellspacing="0" cellpadding="0"> 
<tr>
    <td align="center" bgcolor="white" height="70">
<div class="form-group" >
 <label for="picture" class="col-sm-2 control-label"></label>
   <div class="col-sm-10">
    <img width=60 height=60 >
  </div>
  </div>
  </td>
  </tr>  
  <tr>
    <td align="center" bgcolor="white" height="70">
 <div class="form-group" >
 <label for="InputName" class="col-sm-2 control-label">이름</label>
  <div class="col-sm-10">
  <input type="name" class="form-control" id="InputName" style="width:150px; height:30px;">
   </div>
  </div>
   </td>
  </tr> 
  <tr>
    <td align="center" bgcolor="white" height="70">
  <div class="form-group">
 <label for="InputEmail" class="col-sm-2 control-label">이메일</label>
 <div class="col-sm-10">
  <input type="email" class="form-control" id="InputEmail" style="width:150px; height:30px;">
    </div>
  </div>
   </td>
  </tr> 
  <tr>
    <td align="center" bgcolor="white" height="70">
  <div class="form-group">
 <label for="Inputtell" class="col-sm-2 control-label">연락처</label>
 <div class="col-sm-10">
  <input type="tell" class="form-control" id="InputTell" style="width:150px; height:30px;">
    </div>
  </div>
  </td>
  </tr> 
   <tr>
    <td align="center" bgcolor="white" height="70">
   <div class="form-group" >
 <label for="InputPassword" class="col-sm-2 control-label">비밀번호</label>
 <div class="col-sm-10">
  <input type="password" class="form-control" id="InputPassword" style="width:150px; height:30px;">
    </div>
  </div>
  </td>
  </tr>
   <tr>
    <td align="center" bgcolor="white"  height="50">
   <div class="form-group">
  <label for="radiocheck" class="col-sm-2 control-label">마켓팅<br>수신동의</label>
   <div class="col-sm-10">
    e-mail&emsp;<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
    수신
     <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
    수신거부<br>
    sms&emsp;<input type="radio" name="optionsRadios2" id="optionsRadios2" value="option2" checked>
    수신
     <input type="radio" name="optionsRadios2" id="optionsRadios2" value="option2" checked>
    수신거부
    </div>
  </div>
    </td>
  </tr>
</table>
</form>

  <form action="MyPageForm.action" name="Mdel" method="post">
<table align="center">
 <tr>
 <td>
  <button type="reset" class="btn btn-default" >취소하기</button>

  <button type="submit" class="btn btn-primary" alert="저장되었습니다.">저장하기</button>
  </td>
</tr>
</table>
</form>


</body>
</html>