<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>

<title>회원정보수정</title>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
//google analytics pc
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-38984076-1', 'auto');
ga('require', 'linkid', 'linkid.js');
ga('set', 'dimension4', 'www');
ga('send', 'pageview');

if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "2403236b48f994";
wcs_do();
</script>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-M8XMTD');</script><script type="text/javascript" src="//img.tourtips.com/js/cm/jquery-1.11.2.min.js?utv=0002219"></script>
<script type="text/javascript" src="//img.tourtips.com/js/cm/common.js?utv=0002219"></script>
<script type="text/javascript" src="/css/js"></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js?utv=0002219"></script>
<script type="text/javascript" src="//img.tourtips.com/js/default.js?utv=0002219"></script>
<script>
</script>
</head>

<body>
<div id="u_skip"><a href="#container" onclick="document.getElementById('container').focus();return false;">컨텐츠 바로가기</a></div><div id="wrap">
<style>
.up_close {background:url(//img.tourtips.com/images/common/close_btn_b.png) no-repeat right center; position:absolute; width:38px; height:37px; top:15px; right:30px; cursor:pointer}
</style>
<script>
function TTNBClick () {
        setCookie('TTNB_219', '0', '1');
        $('.ttnb').hide();
}
</script>

<!-- container area -->
<div id="container">
	<div id="content">
		<div class="body">
			<div class="lnb">
				<!-- 카테고리분류 -->
				<ul class="city_name">
				<li class="city"><img
								src="//img.tourtips.com/images/common/lnb/join.png"
								alt="회원가입 - 회원정보입력" /></li>
				</ul>
		
			</div>
						<div class="sbody">	
	<!--2014-04-25 추가-->
	<div class="user_info_edit">
		<p class="info_edit_title"><span>이메일 인증 안내</span></p>
		<div class="login_box">
				<p class="coment">
					입력하신 이메일로 인증 메일을 발송하였습니다. 인증을 완료하셔야 회원 가입이 완료됩니다.<br />
				</p>
				<span class="join_btn login"><button type="button" id="login_submit" onclick="javascript:location.href='Main.action'">확인</button></span>
				
		</div>
	</div>
	<!--//2014-04-25 추가-->
</div>
<script>
	document.getElementById('login_pw').focus();
</script>					</div>
	</div>
</div>
<!-- //container area -->
</div>
<script type="text/javascript" src="//img.tourtips.com/js/common.js?utv=0002219"></script>

<script type="text/javascript">
</script>
		</body>
}
</html>

