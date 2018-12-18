<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.turbolinks-progress-bar {
  position: fixed;
  display: block;
  top: 0;
  left: 0;
  height: 3px;
  background: #0076ff;
  z-index: 9999;
  transition: width 300ms ease-out, opacity 150ms 150ms ease-in;
  transform: translate3d(0, 0, 0);
}
</style>
<meta charset="EUC-KR">
<title>TMT로그인</title>
</head>
<body>
<main class="member">
<div class="container-fluid content-wrap">
<div class="member-panel">
<div class="panel-button">
<div class="btn-wrap">
<a class="btn-new btn--type-outline btn--width-100 btn-sns" href="https://www.myrealtrip.com/users/auth/naver">
<img width="18" class="icon" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/naver-logo@2x-332865f7b796a02822378e0b61e6dcace93ae9a24abd810cd774a06b5fbcb0b5.png">
<span>네이버로 로그인</span>
</a>
</div>
</div>

<div class="panel-line clearfix">
<hr class="divider">
<div class="or">또는
</div>
</div>

<div class="panel-body">
<form class="fv-form fv-form-bootstrap" role="form" action="/users/sign_in" method="post" accept-charset="euc-kr" novalidate="novalidate" data-validation="true"><button class="fv-hidden-submit" style="width: 0px; height: 0px; display: none;" type="submit"></button>
<input name="euckr" type="hidden" value="!!!">
<input name="authenticity_token" type="hidden" value="FkiBLt41sSo+VPo6YEjkM1bHDwUwhf6bitaYe8c+kP+qbsMdZQ3GcuA2DLwEAyDtbdKTyub/U8HjdmDjFSEvvw==">

<div class="form-wrapper">
<div class="content-wrapper">
<div class="form-group clearfix">
<div class="content-title-box">
<div class="sub-title">아이디*</div>
</div>

<div class="row">
<div class="col-xs-12">
<input name="user[id]" title="이메일" class="form-control" type="email" placeholder="아이디" autocomplete="off" data-fv-field="user[id]">
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="user[id]" data-fv-result="NOT_VALIDATED">꼭 필요해요.</small>
<small class="help-block" style="display: none;" data-fv-validator="stringLength" data-fv-for="user[id]" data-fv-result="NOT_VALIDATED">아이디가 맞나요?</small>
</div>
</div>
</div>
</div>

<div class="content-wrapper">
<div class="form-group">
<div class="content-title-box">
<div class="sub-title">비밀번호*</div>
</div>

<div class="row">
<div class="col-xs-12">
<input name="user[password]" title="비밀번호" class="form-control" type="password" placeholder="비밀번호" data-fv-field="user[password]">
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="user[password]" data-fv-result="NOT_VALIDATED">비밀번호를 입력해주세요.</small>
<small class="help-block" style="display: none;" data-fv-validator="stringLength" data-fv-for="user[password]" data-fv-result="NOT_VALIDATED">너무 짧은 비밀번호입니다.</small>
</div>
</div>
</div>
</div>

<div class="content-wrapper">
<div class="form-group">
<div class="row row-margin">

<div class="col-xs-6">
<div class="checkbox-custom checkbox-primary">
<input name="user[remember_me]" id="remember_me" type="checkbox">
<label for="remember_me">로그인 상태 유지</label>
</div>
</div>

<div class="col-xs-6">
<div class="find-id">
<a href="/TMT/FindIdForm.action" data-turbolinks="false">아이디찾기</a>

</div>
</div>

<div class="col-xs-6">
<div class="find-password">
<a href="/TMT/FindPwForm.action" data-turbolinks="false">비밀번호 찾기</a>

</div>
</div>
</div>
</div>
</div>

<div class="btn-wrap">
<button class="btn-new btn--type-primary btn--width-100" type="submit">
<span>로그인</span>
</button>
</div>
</div>
</form>


</div>

<div class="panel-footer">

<div class="footer-title">
아직 TMT 회원이 아니신가요?

<a href="http://localhost:8080/TMT/JoinForm.action">회원가입</a>

</div>
</div>
</div>
</div>

</main>
</body>
</html>