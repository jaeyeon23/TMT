<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>TMT회원가입</title>
</head>
<body>
<main class="member member-signup">
<div class="container-fluid content-wrap">
<form class="fv-form fv-form-bootstrap" role="form" action="/users" method="post" accept-charset="euc-kr" novalidate="novalidate" data-validation="true"><button class="fv-hidden-submit" style="width: 0px; height: 0px; display: none;" type="submit"></button>
<input name="euckr" type="hidden" value="!!!">
<input name="authenticity_token" type="hidden" value="kkHefXE9VpJNTWY5FFB4dBYcfURNq2YOjxfdwMSFf6cuZ5xOygUhypMvkL9wG7yqLQnhi5vRy1TmtyVYFprA5w==">
<!-- 로그인 -->
<div class="member-panel">
<div class="panel-button">
<div class="btn-wrap">
<a class="btn-new btn--type-outline btn--width-100 btn-sns" href="https://www.myrealtrip.com/users/auth/naver" data-gtm-category="회원가입" data-gtm-action="네이버로 회원가입">
<img width="18" class="icon" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/naver-logo@2x-332865f7b796a02822378e0b61e6dcace93ae9a24abd810cd774a06b5fbcb0b5.png">
<span>네이버로 회원가입</span>
</a>
</div>
</div>
<div class="panel-line clearfix">
<hr class="divider">
<div class="or">또는</div>
</div>

<div class="panel-body">
<div class="form-wrapper">

<div class="content-wrapper">
<div class="form-group">
<div class="content-title-box">
<div class="sub-title">
이름
<span class="required">*</span>
</div>
</div>
<div class="row">
<div class="col-xs-12">
<input name="user[username]" title="이름" class="form-control" type="text" placeholder="이름을 입력해주세요." data-fv-field="user[username]">
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="user[username]" data-fv-result="NOT_VALIDATED">멋진 이름이 있으시잖아요.</small>
<small class="help-block" style="display: none;" data-fv-validator="stringLength" data-fv-for="user[username]" data-fv-result="NOT_VALIDATED">이름은 두 글자 이상 입력해주세요.</small>
</div>
</div>
</div>
</div>
<div class="content-wrapper">
<div class="form-group">
<div class="content-title-box">
<div class="sub-title">
이메일
<span class="required">*</span>
</div>
</div>
<div class="row">
<div class="col-xs-12">
<input name="user[email]" title="이메일" class="form-control" type="email" placeholder="ID@example.com" autocomplete="off" data-fv-field="user[email]">
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="user[email]" data-fv-result="NOT_VALIDATED">꼭 필요해요.</small>
<small class="help-block" style="display: none;" data-fv-validator="emailAddress" data-fv-for="user[email]" data-fv-result="NOT_VALIDATED">이메일 주소가 맞나요?</small>
</div>
</div>
</div>
</div>

<div class="content-wrapper">
<div class="form-group">
<div class="content-title-box">
<div class="sub-title">
아이디
<span class="required">*</span>
</div>
</div>
<div class="row">
<div class="col-xs-12">
<input name="user[username]" title="아이디" class="form-control" type="text" placeholder="아이디 입력해주세요." data-fv-field="user[id]">
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="user[id]" data-fv-result="NOT_VALIDATED">아이디를 입력해주세요.</small>
<small class="help-block" style="display: none;" data-fv-validator="stringLength" data-fv-for="user[id]" data-fv-result="NOT_VALIDATED">아이디 중복확인을 해주세요.</small>
</div>
</div>
</div>
</div>

<div class="content-wrapper">
<div class="form-group">
<div class="content-title-box">
<div class="sub-title">
비밀번호
<span class="required">*</span>
</div>
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
<div class="content-title-box">
<div class="sub-title">
비밀번호 확인
<span class="required">*</span>
</div>
</div>
<div class="row">
<div class="col-xs-12">
<input name="user[password_confirmation]" title="비밀번호" class="form-control" type="password" placeholder="비밀번호 확인" data-fv-field="user[password_confirmation]">
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="user[password_confirmation]" data-fv-result="NOT_VALIDATED">비밀번호를 다시 한번 입력해주세요.</small><small class="help-block" style="display: none;" data-fv-validator="identical" data-fv-for="user[password_confirmation]" data-fv-result="NOT_VALIDATED">비밀번호가 일치하지 않습니다.</small></div>
</div>
</div>
</div>

<div class="content-wrapper">
<div class="form-group">
<div class="content-title-box">
<div class="sub-title">
여권번호
<span class="required">*</span>
</div>
</div>
<div class="row">
<div class="col-xs-12">
<input name="user[passport]" title="아이디" class="form-control" type="text" placeholder="여권번호를 입력해주세요." data-fv-field="user[passport]">
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="user[passport]" data-fv-result="NOT_VALIDATED">여권번호를 입력해주세요.</small>
</div>
</div>
</div>
</div>

<div class="content-wrapper">
<div class="form-group">
<div class="content-title-box">
<div class="sub-title">
전화번호
</div>
</div>
<div class="row">
<div class="col-xs-12">
<input name="user[tel]" title="전화번호" class="form-control" type="text" placeholder="전화번호를 입력해주세요." data-fv-field="user[tel]">
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="user[tel]" data-fv-result="NOT_VALIDATED">전화번호를 입력해주세요.</small>
</div>
</div>
</div>
</div>

<div class="form-wrapper">
<div class="content-wrapper">
<div class="form-group clearfix agreements-container">
<div class="row">
<div class="col-xs-12">
<div class="checkbox-signup checkbox-signup-all checkbox-custom checkbox-primary">
<input id="checkAll" type="checkbox"><label for="checkAll">아래 약관에 모두 동의합니다.</label></div>
<div class="checkbox-signup-wrapper" id="signupCheckboxGroup">
<div class="checkbox-signup form-group checkbox-custom checkbox-primary">
<input name="checkbox_terms" id="checkTerms" type="checkbox" value="true" data-fv-field="checkbox_terms">
<label for="checkTerms">
<a class="terms-link">회원가입 및 운영약관</a>
(필수)
</label><div class="terms-text" data-title="회원가입 및 운영약관">회원가입 및 운영약관<br>
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="checkbox_terms" data-fv-result="NOT_VALIDATED">약관 동의에 체크해 주세요.</small></div>
<div class="checkbox-signup form-group checkbox-custom checkbox-primary">
<input name="checkbox_agree" id="checkAgree" type="checkbox" value="true" data-fv-field="checkbox_agree">
<label for="checkAgree">
<a class="terms-link">개인정보 수집 및 이용</a>
(필수)
</label><div class="terms-text" data-title="개인정보 수집 및 이용">개인정보 수집 및 이용<br>
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="checkbox_agree" data-fv-result="NOT_VALIDATED">개인정보수집 동의에 체크해 주세요.</small></div>
<div class="checkbox-signup checkbox-custom checkbox-primary">

</div>
</div>
</div>
</div>
</div>
</div>
<div class="btn-wrap">
<button disabled="" class="btn-new btn--type-primary btn--width-100" type="submit" data-gtm-category="회원가입" data-gtm-action="이메일 회원가입" data-disable_with="회원가입">회원가입</button>
</div>
</div>
</div>
</div>
</form>

</div>
</main>
</body>
</html>