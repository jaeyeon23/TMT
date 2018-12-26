<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/TMT/item/tour/tourcss.css" type="text/css">
<style></style>
</head>
<body>
	<div id=tuor_body>
		<div id=sideBar>
			<div id=sideMenu>
				<h1>
					<b>������</b>
					<hr>
				</h1>
				
					<li><a href="TourList.action" class="on">��ü</a></li>
					<hr>
					<li><a href="TourList.action?tourname=�ѱ�" class="on">�ѱ�</a></li>
					<hr>
					<li><a href="TourList.action?tourname=�̱�" class="on">�̱�</a></li>
					<hr>
					<li><a href="TourList.action?tourname=�߱�" class="on">�߱�</a></li>
					<hr>
					<li><a href="TourList.action?tourname=" class="on">����4</a></li>
					<hr>
				
			</div>
		</div>
		<div id=tourList>
				<dl>
					<dt>
						<form id="Tsearch">
						<div id = "search_bar">
							<input type="text" name="tourname" placeholder=" ������,���,��ǰ�� �˻��غ�����"/> 
							<button>�˻�</button>
						</div>
						</form>
						<a href="TourList.action?num=1&tourname=<s:property value="tourname" />">[�α��]</a> 
							<a href="TourList.action?num=2&tourname=<s:property value="tourname" />">[���ݼ�]</a>
							<a href="TourList.action?num=3&tourname=<s:property value="tourname" />">[������]</a>
						
					</dt>

				<br>
					<dd>
						<ul>
						<s:iterator value="Tourlist" status="stat">
							<div id="contents">
							    <div id= imageT>
								<s:if test="image1 != null">
									<img src="/TMT/upload/tour/<s:property value="%{image1}" />">
								</s:if> 
								<s:else>
									<img src="/TMT/images/noimage.jpg">
								</s:else>
								</div>
								<div id= contentT>
								<h4>
									[<s:property value="region" />]<s:property value="name" /></h4>
									<font color="orange" size = "5"><b><s:property value="price" />��</b></font> / 1��<br>
									<s:if test="grade == 0">
									<font color=#BDBDBD>�ڡڡڡڡ�</font>
							    	</s:if> 
							    	<s:elseif test ="grade == 1">
							    		<font color="red">��</font><font color="#BDBDBD">�ڡڡڡ�</font>
							    	</s:elseif>	
							    	<s:elseif test ="grade == 2">
							    		<font color="red">�ڡ�</font><font color="#BDBDBD">�ڡڡ�</font>
							    	</s:elseif>	
							    	<s:elseif test ="grade == 3">
							    		<font color="red">�ڡڡ�</font><font color="#BDBDBD">�ڡ�</font>
							    	</s:elseif>	
							    	<s:elseif test ="grade == 4">
							    		<font color="red">�ڡڡڡ�</font><font color="#BDBDBD">�ڡڡڡڡ�</font>
							    	</s:elseif>					
							    	<s:elseif test ="grade == 5">
							    		<font color="red">�ڡڡڡڡ�</font>
							    	</s:elseif>			
							    	(0)	
								</div>
								
							</div>
					    </s:iterator>
					    
						</ul>
						
					</dd>
				</dl>
				<s:property value="pagingHtml" escape="false" />
			</div>
	</div>
</body>
</html>