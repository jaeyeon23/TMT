<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>TMTȸ������</title>
</head>
<body>
<main class="member member-signup">
<div class="container-fluid content-wrap">
<form class="fv-form fv-form-bootstrap" role="form" action="/users" method="post" accept-charset="euc-kr" novalidate="novalidate" data-validation="true"><button class="fv-hidden-submit" style="width: 0px; height: 0px; display: none;" type="submit"></button>
<input name="euckr" type="hidden" value="!!!">
<input name="authenticity_token" type="hidden" value="kkHefXE9VpJNTWY5FFB4dBYcfURNq2YOjxfdwMSFf6cuZ5xOygUhypMvkL9wG7yqLQnhi5vRy1TmtyVYFprA5w==">
<!-- �α��� -->
<div class="member-panel">
<div class="panel-button">
<div class="btn-wrap">
<a class="btn-new btn--type-outline btn--width-100 btn-sns" href="https://www.myrealtrip.com/users/auth/naver" data-gtm-category="ȸ������" data-gtm-action="���̹��� ȸ������">
<img width="18" class="icon" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/setting/naver-logo@2x-332865f7b796a02822378e0b61e6dcace93ae9a24abd810cd774a06b5fbcb0b5.png">
<span>���̹��� ȸ������</span>
</a>
</div>
</div>
<div class="panel-line clearfix">
<hr class="divider">
<div class="or">�Ǵ�</div>
</div>

<div class="panel-body">
<div class="form-wrapper">

<div class="content-wrapper">
<div class="form-group">
<div class="content-title-box">
<div class="sub-title">
�̸�
<span class="required">*</span>
</div>
</div>
<div class="row">
<div class="col-xs-12">
<input name="user[username]" title="�̸�" class="form-control" type="text" placeholder="�̸��� �Է����ּ���." data-fv-field="user[username]">
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="user[username]" data-fv-result="NOT_VALIDATED">���� �̸��� �������ݾƿ�.</small>
<small class="help-block" style="display: none;" data-fv-validator="stringLength" data-fv-for="user[username]" data-fv-result="NOT_VALIDATED">�̸��� �� ���� �̻� �Է����ּ���.</small>
</div>
</div>
</div>
</div>
<div class="content-wrapper">
<div class="form-group">
<div class="content-title-box">
<div class="sub-title">
�̸���
<span class="required">*</span>
</div>
</div>
<div class="row">
<div class="col-xs-12">
<input name="user[email]" title="�̸���" class="form-control" type="email" placeholder="ID@example.com" autocomplete="off" data-fv-field="user[email]">
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="user[email]" data-fv-result="NOT_VALIDATED">�� �ʿ��ؿ�.</small>
<small class="help-block" style="display: none;" data-fv-validator="emailAddress" data-fv-for="user[email]" data-fv-result="NOT_VALIDATED">�̸��� �ּҰ� �³���?</small>
</div>
</div>
</div>
</div>

<div class="content-wrapper">
<div class="form-group">
<div class="content-title-box">
<div class="sub-title">
���̵�
<span class="required">*</span>
</div>
</div>
<div class="row">
<div class="col-xs-12">
<input name="user[username]" title="���̵�" class="form-control" type="text" placeholder="���̵� �Է����ּ���." data-fv-field="user[id]">
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="user[id]" data-fv-result="NOT_VALIDATED">���̵� �Է����ּ���.</small>
<small class="help-block" style="display: none;" data-fv-validator="stringLength" data-fv-for="user[id]" data-fv-result="NOT_VALIDATED">���̵� �ߺ�Ȯ���� ���ּ���.</small>
</div>
</div>
</div>
</div>

<div class="content-wrapper">
<div class="form-group">
<div class="content-title-box">
<div class="sub-title">
��й�ȣ
<span class="required">*</span>
</div>
</div>
<div class="row">
<div class="col-xs-12">
<input name="user[password]" title="��й�ȣ" class="form-control" type="password" placeholder="��й�ȣ" data-fv-field="user[password]">
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="user[password]" data-fv-result="NOT_VALIDATED">��й�ȣ�� �Է����ּ���.</small>
<small class="help-block" style="display: none;" data-fv-validator="stringLength" data-fv-for="user[password]" data-fv-result="NOT_VALIDATED">�ʹ� ª�� ��й�ȣ�Դϴ�.</small>
</div>
</div>
</div>
</div>

<div class="content-wrapper">
<div class="form-group">
<div class="content-title-box">
<div class="sub-title">
��й�ȣ Ȯ��
<span class="required">*</span>
</div>
</div>
<div class="row">
<div class="col-xs-12">
<input name="user[password_confirmation]" title="��й�ȣ" class="form-control" type="password" placeholder="��й�ȣ Ȯ��" data-fv-field="user[password_confirmation]">
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="user[password_confirmation]" data-fv-result="NOT_VALIDATED">��й�ȣ�� �ٽ� �ѹ� �Է����ּ���.</small><small class="help-block" style="display: none;" data-fv-validator="identical" data-fv-for="user[password_confirmation]" data-fv-result="NOT_VALIDATED">��й�ȣ�� ��ġ���� �ʽ��ϴ�.</small></div>
</div>
</div>
</div>

<div class="content-wrapper">
<div class="form-group">
<div class="content-title-box">
<div class="sub-title">
���ǹ�ȣ
<span class="required">*</span>
</div>
</div>
<div class="row">
<div class="col-xs-12">
<input name="user[passport]" title="���̵�" class="form-control" type="text" placeholder="���ǹ�ȣ�� �Է����ּ���." data-fv-field="user[passport]">
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="user[passport]" data-fv-result="NOT_VALIDATED">���ǹ�ȣ�� �Է����ּ���.</small>
</div>
</div>
</div>
</div>

<div class="content-wrapper">
<div class="form-group">
<div class="content-title-box">
<div class="sub-title">
��ȭ��ȣ
</div>
</div>
<div class="row">
<div class="col-xs-12">
<input name="user[tel]" title="��ȭ��ȣ" class="form-control" type="text" placeholder="��ȭ��ȣ�� �Է����ּ���." data-fv-field="user[tel]">
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="user[tel]" data-fv-result="NOT_VALIDATED">��ȭ��ȣ�� �Է����ּ���.</small>
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
<input id="checkAll" type="checkbox"><label for="checkAll">�Ʒ� ����� ��� �����մϴ�.</label></div>
<div class="checkbox-signup-wrapper" id="signupCheckboxGroup">
<div class="checkbox-signup form-group checkbox-custom checkbox-primary">
<input name="checkbox_terms" id="checkTerms" type="checkbox" value="true" data-fv-field="checkbox_terms">
<label for="checkTerms">
<a class="terms-link">ȸ������ �� ����</a>
(�ʼ�)
</label><div class="terms-text" data-title="ȸ������ �� ����">ȸ������ �� ����<br>
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="checkbox_terms" data-fv-result="NOT_VALIDATED">��� ���ǿ� üũ�� �ּ���.</small></div>
<div class="checkbox-signup form-group checkbox-custom checkbox-primary">
<input name="checkbox_agree" id="checkAgree" type="checkbox" value="true" data-fv-field="checkbox_agree">
<label for="checkAgree">
<a class="terms-link">�������� ���� �� �̿�</a>
(�ʼ�)
</label><div class="terms-text" data-title="�������� ���� �� �̿�">�������� ���� �� �̿�<br>
<small class="help-block" style="display: none;" data-fv-validator="notEmpty" data-fv-for="checkbox_agree" data-fv-result="NOT_VALIDATED">������������ ���ǿ� üũ�� �ּ���.</small></div>
<div class="checkbox-signup checkbox-custom checkbox-primary">

</div>
</div>
</div>
</div>
</div>
</div>
<div class="btn-wrap">
<button disabled="" class="btn-new btn--type-primary btn--width-100" type="submit" data-gtm-category="ȸ������" data-gtm-action="�̸��� ȸ������" data-disable_with="ȸ������">ȸ������</button>
</div>
</div>
</div>
</div>
</form>

</div>
</main>
</body>
</html>