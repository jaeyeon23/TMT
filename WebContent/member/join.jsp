<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style>
	.factor{
	align:left;
	width:15%;
	FONT-SIZE: 15pt;
	}
	.notice{
	width:20%;
	valign:middle;
	font-size:15pt;
	}
	.term{
	font-family:;
	color:;
	resize:none;
	background-color:#FBF8EF;
	border:0;
	}
	.title{
	FONT-SIZE: 20pt;
	}
	.agree{
	font-size:13pt;
	}
	.regButton{
    background-color:rgba(249, 214, 169, 1);
    border: none;
    color:#000000;
    padding: 5px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin: 3px;
    cursor: pointer;
    border-radius:5px;
    width:100;
    font-size:20px;
	}	
	.regButton:hover{
	background-color: #F5D0A9;
	}
</style>
<script type="text/javascript">
function check(){
	
	var f=document.join;
	
	if (f.id.value == "") {
		alert("���̵� �Է����ֽʽÿ�");
		f.id.focus();
		return false;
	}
	if (f.id2.value == "") {
		alert("���̵� �ߺ�Ȯ���� ���ֽʽÿ�");
		return false;
	}
	if (f.password.value == "") {
		alert("��й�ȣ�� �Է����ֽʽÿ�");
		f.password.focus();
		return false;
	}
	if (f.password.value != f.password2.value) {
		alert("�����ȣ�� ���Է� ���ּ���.");
		f.password2.select();
		return false;
	}
	if (f.name.value == "") {
		alert("�̸��� �Է����ֽʽÿ�");
		f.name.focus();
		return false;
	}
	if (f.tel.value == "") {
		alert("�ڵ�����ȣ�� �Է����ֽʽÿ�");
		f.tel.focus();
		return false;
	}
	if (f.email.value == "") {
		alert("�̸����� �Է����ֽʽÿ�");
		f.email.focus();
		return false;
	}
	if(f.passport.value==""){
		alert("���ǹ�ȣ�� �Է����ֽʽÿ�");
		f.passport.focus();
		return false;
	}
	if (f.passport2.value == "") {
		alert("���ǹ�ȣ �ߺ�Ȯ���� ���ֽʽÿ�");
		return false;
	}
	if (join.agreeUse.checked == false) {
		alert("�̿���, �������� ���� �� �̿뿡 ��� ������ �ֽñ� �ٶ��ϴ�.");
		return false;
	}

	if (join.agreePrivacy.checked == false) {
		alert("�̿���, �������� ���� �� �̿뿡 ��� ������ �ֽñ� �ٶ��ϴ�.");
		return false;
	}

}
function openConfirmId(){
	var url="ConfirmId.action?id="+document.join.id.value;
	var f=document.join;
	var idPs = /^[0-9a-zA-Z]{4,12}$/; //���̵� ��й�ȣ üũǥ����
	if(f.id.value==""){
		alert("���̵� �Է����ּ���.");
		f.id.focus();
		return false;
	}
	open(url,"confirmid","toolbar=no,location=no, status=no, menubar=no, scrollbars=yes, resizable=no, width=410, height=400");
}
function openConfirmPassport(){
	var url="passportCheck.action?id="+document.join.passport.value;
	var f=document.join;

	if(f.passport.value==""){
		alert("���ǹ�ȣ�� �Է����ּ���.");
		f.passport.focus();
		return false;
	}
	open(url,"confirmpassport","toolbar=no,location=no, status=no, menubar=no, scrollbars=yes, resizable=no, width=410, height=400");
}
function chkBox(bool){
	var obj=document.getElementsByName("join");
	for(var i=0;i<obj.length;i++)
		obj[i].checked=bool;
}

</script>
<title>TMTȸ������</title>
</head>
<body>
<center>
		<form name="join" action="Join.action" method="post" onsubmit="return check()">
			<table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="50">&nbsp;</td>
				</tr>							
				<tr>
					<td colspan="100%" height="3" bgcolor="black"/>
				</tr>				
				<tr>
					<td height="20">&nbsp;</td>
				</tr>
				<tr>
					<td height="40" align="center" colspan="100%" class="title">ȸ������</td>
				</tr>				
				<tr>
					<td height="20">&nbsp;</td>
				</tr>				
				<tr>
					<td colspan="100%" height="3" bgcolor="black"/>
				</tr>				

				<tr>
					<td height="20" colspan="100%">&nbsp;</td>
				</tr>			
				<tr>
					<td class="factor">���̵�</td>
					<td>
					<input type="text" name="id" size="28"> &nbsp;&nbsp;&nbsp;
					<input type="button" name="id2" value=" �ߺ�Ȯ�� " onclick="openConfirmId()" class="button"></td>
					<td class="notice">����/���ڸ� �̿��Ͽ� 4~12�ڷ� �Է��ϼ���</td>
				</tr>	
				
				<tr>
					<td height="20" colspan="100%">&nbsp;</td>
				</tr>			
				<tr>
					<td class="factor">��й�ȣ</td>
					<td>
					<input type="password" name="password" size="28"></td>
					<td class="notice">����/���ڸ� �̿��Ͽ� 4~12�ڷ� �Է��ϼ���</td>
				</tr>
				
				<tr>
					<td height="30" colspan="100%">&nbsp;</td>
				</tr>			
				<tr>
					<td class="factor">��й�ȣ ��Ȯ��</td>
					<td>
					<input type="password" name="password2" size="28" placeholder="��й�ȣ�� ���Է� ���ֽʽÿ�"></td>
				</tr>			
	
				<tr>
					<td height="30" colspan="100%">&nbsp;</td>
				</tr>			
				<tr>
					<td class="factor">�̸�</td>
					<td>
					<input type="text" name="name" size="28"></td>
					<td class="notice">ȸ������ �� ������ �Ұ����մϴ�</td>
				</tr>
								
				<tr>
					<td height="30" colspan="100%">&nbsp;</td>
				</tr>
				<tr>
					<td class="factor">��ȭ��ȣ</td>
					<td>
					<input type="text" name="tel" size="28"></td>
					<td class="notice">"-" ���� ���ڸ� �Է��ϼ���</td>
				</tr>
				
				<tr>
					<td height="30" colspan="100%">&nbsp;</td>
				</tr>
				<tr>
					<td class="factor">�̸���</td>
					<td>
					<input type="text" name="email" size="28" placeholder="______________ @ ______________">&nbsp;&nbsp;&nbsp;
					<input type="button" name="emailChk" value="���� ����" onclick="openConfirmEmail()" class="button"></td>
					<td class="notice">�̸��� ���Ŀ� ���� �Է��� �ּ���</td>
				</tr>
				
				<tr>
					<td height="30" colspan="100%">&nbsp;</td>
				</tr>
				<tr>
					<td class="factor">���ǹ�ȣ</td>
					<td>
					<input type="text" name="passport" size="28">&nbsp;&nbsp;&nbsp;
					<!--  <input type="button" name="passport2" value=" �ߺ�Ȯ�� " onclick="openConfirmPassport()" class="button"></td>-->
				</tr>
				
				<tr>
					<td height="50">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="100%" height="3" bgcolor="black"/>
				</tr>
	
				<tr>
					<td height="10">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="100%" height="40" align="center"><font size="5" >�ֿ� ��å �� �̿� ���</font>
					</td>
				</tr>
				
				<tr>
					<td height="10">&nbsp;</td>
				</tr>
				
				<tr>
					<td colspan="100%" height="3" bgcolor="black"/>
				</tr>
	
				<tr>
					<td height="40">&nbsp;</td>
				</tr>
				
				<tr>
					<td colspan="100%" align="right">
					<label for="agreeAll">
							<strong class="agree">�̿���, �������� ���� �� �̿뿡 ��� �����մϴ�.</strong>
							<input type="checkbox" id="agreeAll" value="" class="checkbox" onclick=chkBox(this.checked) />
					</label>
					</td>
				</tr>
				<tr>
					<td height="90">&nbsp;</td>
				</tr>

				
				<tr>
					<td colspan="100%" align="middle" class="title">�̿���</td>
				</tr>
				
				<tr>
					<td height="20">&nbsp;</td>
				</tr>	
				<tr>
					<td align="center" colspan="100%">
					<textarea readonly="readonly" rows="10" cols="120" class="term">
					!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!�̿��� ���� ��!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
					</textarea>
					</td>
				</tr>
				<tr>
					<td height="10">&nbsp;</td>
				</tr>
				
				<tr>
					<td colspan="100%" height="60" valign="top" align="right">
					<label for="agreePrivacy" class="agree"> ������������, �̿� ���ǿ� �����մϴ�. 
					<input type="checkbox" id="agreePrivacy" name="join" value="" class="checkbox" />
					</label>
					</td>
				</tr>
				<tr>
					<td colspan="100%" align="center">
					<input type="submit" value=" ȸ������ " class="regButton" >
						&nbsp;&nbsp;&nbsp;&nbsp; 
						<a href="Main.action" class="regButton">&nbsp;&nbsp;���&nbsp;&nbsp;</a></td>
				</tr>
				<tr>
					<td height="50">&nbsp;</td>
				</tr>
				
			</table>
		</form>
	</center>
</body>
</html>