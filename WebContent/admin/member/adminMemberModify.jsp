<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>




<!DOCTYPE html>
<html>
<head>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">

<script src="../js/bootstrap.js" type="text/javascript"></script>
<script type="text/javascript" src="mypage.js" ></script> 
<style>
input[type] {
  border: 2px solid "#E6E6E6";
  border-radius: 4px;
  
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
function getThumbnailPrivew(html, $target) {
    if (html.files && html.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $target.css('display', '');
            //$target.css('background-image', 'url(\"' + e.target.result + '\")'); // 배경으로 지정시
            $target.html('<img src="' + e.target.result + '" border="0" alt="" width="60"/>');
        }
        reader.readAsDataURL(html.files[0]);
    }
}
</script>
<style>
.filebox label {
    display: inline-block;
    padding: .5em .75em;
    color: #999;
    font-size: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #fdfdfd;
    cursor: pointer;
    border:  solid #ebebeb;
    border-bottom-color: #e2e2e2;
    border-radius: .25em;
    width:60;
    max-width:60;
}
 
.filebox input[type="file"] {  /* 파일 필드 숨기기 */
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip:rect(0,0,0,0);
    border: 0;
}
</style>

<meta charset="UTF-8">
<title>마이페이지 수정</title>
</head>
<body>
<div>
<h2>프로필 수정</h2>
</div>

<div id="container">
			<div id="content">
				<div class="body">
					<div class="lnb">
						<!-- 카테고리분류 -->
						<br/><br/><br/>
					</div>
					<div class="sbody">
					<s:property value="#sessionScope.id"/>
						<!-- 회원정보수정 -->
					
							<div class="join_form" style="margin-top: 0" align="center">
							<table  border="1" cellspacing="0" summary="회원가입 폼 작성">
							<tr align="center" >
                      <form name="form" id="form" action=""method="post" enctype="multipart/form-data" autocomplete="off">
                                <div class="filebox">
                         
                              <input type="file"  name="cma_file" id="cma_file" accept="image/*" capture="camera"  onchange="getThumbnailPrivew(this,$('#cma_image'))" />
                                 
                              <br /><br />
                                  <div id="cma_image" style="solid #000;display:none;"></div><br><br>
                                   <label for="cma_file">프로필 사진추가</label>
                                </div>
                           </form>
                         
                                   </tr>
                              </div>
                          
                                        
									<div class="form-group" style="padding-top: 15px">
										
											<colgroup>
												<col width="150px" />
												<col width="650px" />
											</colgroup>
											<tbody>
											  
											<input type="hidden" name="id" value="<s:property value="resultClass.id"/>"/>
												<tr>
													<th scope="row">아이디</th>
													<td height="30">
														<div class="form-group">
															<span><s:property value="resultClass.id"/></span>
														</div>
													</td>
												</tr>
												<tr>
													<th scope="row">새 비밀번호</th>
													<td><br>
														<div class="form-group">
															<input type="password" name="newpassword" 
																 maxlength="20" placeholder="비밀번호 변경 시 입력" />
														</div>
													</td>
												</tr>
												<tr>
													<th scope="row">새 비밀번호 확인</th>
													<td><br>
														<div class="form-group">
															<input type="password" name="newpassword2"
																 title="새 비밀번호" class="i_text" maxlength="20"  placeholder="비밀번호 변경 확인" /> <span
																 id="newPassConfirm_help"
																style="display: none"><img
																src= alt="다시
																한번 입력하세요." /></span>
														</div>
													</td>
												</tr>
												<tr>
													<th scope="row">이름</th>
													<td height="30">
														<div class="item">
														<s:property value="resultClass.name"/>
														</div>
													</td>
												</tr>
												<tr>
												</tr>
												<tr>
													<th scope="row">이메일 
													</th>
													<td>
														<div class="form-group">
																<input type="text"
																name="email" id="subemail_id" class="i_text"
																style="width: 100px; height:30px;"  value="${email}"/> 
																
																@ 
																
																<input type="text"
																name="email2" id="subemail_host" class="i_text"
																style="width: 100px; height:30px;" value="${email}"/> 
																
																<select name="emailHost" id="emailHost"
																style="width: 85px; height: 20px">
																<option value="">-직접입력-</option>
																<option value="naver.com">naver.com</option>
																<option value="hanmail.net">hanmail.net</option>
																<option value="nate.com">nate.com</option>
																<option value="gmail.com">gmail.com</option>
																<option value="hotmail.com">hotmail.com</option>
																<option value="daum.net">daum.net</option>
																<option value="yahoo.com">yahoo.com</option>
															</select> 
														</div>
													</td>
												</tr>
												<tr>
													<th scope="row">연락처</th>
													<td>
														<div class="form-group">
														<input type="text" name="tel" style="width: 100px; height:30px;"value="${tel}"
																title="연락처" class="i_text" maxlength="11"/><!-- 숫자만 들어가게 구현해보자 -->
														</div>
													</td>
												</tr>
											<tr>
													<th scope="row">마켓팅 수신동의</th>
													<td>
														<div class="form-group">
													<label class="radio-inline">
                                                      e-mail&emsp;&emsp;&nbsp;<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 수신
                                                    </label>
                                                    <label class="radio-inline">
                                                      <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 수신안함
                                                    </label>
														</div>
														<div class="form-group">
													<label class="radio-inline">
                                                     sms&emsp;&emsp;&emsp;<input type="radio" name="inlineRadioOptions2" id="inlineRadio1" value="option1"> 수신
                                                    </label>
                                                    <label class="radio-inline">
                                                        <input type="radio" name="inlineRadioOptions2" id="inlineRadio2" value="option2"> 수신안함
                                                    </label>
														</div>
													</td>
													
												</tr>
											</tbody>
										</table>
										<br>
									</div>
									
								</fieldset>
								
							</div>
				</form>
					</div>
				</div>
			</div>
		</div>

  <form action="MyPage.action" name="Mdel" method="post">
<table align="center">
 <tr>
 <td>
  <button type="reset" class="btn btn-default" onclick="history.go(-1)" >취소하기</button>

  <button type="submit" class="btn btn-primary" alert="저장되었습니다.">저장하기</button>
  </td>
</tr>
</table><br><br>
</form>


</body>
</html>