<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/mainSearch.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/TMT/css/mainSearch1.css"/>
	<style>
		input[type=text]{
			border: 2px solid #aaa;
			border-radius: 4px;
			margin: 8px	0;
			outline: none;
			padding: 10px;
			box-sizing: border-box;
			transitio;
			font-size:20pt;
		}
		
		input[type=text]:focus{
			border-color: dodgerBlue;
			box-shadow: 0 0 8px 0 dodgerBlue;
		}
	</style>
</head>
<body>
	<center>
		<form>
		<br><input type="text" id="mainSearch_searchbox" name="searchbox"
				value="${param.searchbox }" />
		</form><br>
	</center>
	<s:if test="Tourlist.size() == 0">
		<div>
			<div class="resp-container" style="top: 0px; bottom: 0px;">
				<div class="resp-container--row ">
					<div class="SearchHotel-module__body--HjVRm">
						<div class="SearchHotel-module__content--2xl2M">
							<strong class="SearchHotel-module__destination--131Mv">어떤</strong>&nbsp;
							<span class="SearchHotel-module__description--3v4wM">투어&티켓을
								찾으시나요?</span>
						</div>
						<div class="SearchHotel-module__button--1zAVc">
							<a class="SearchHotel-module__link--39zoa"><button
									type="button" onclick="window.location.href='TourList.action'"
									class="Button-module__button--227wS Button-module__outline--1gLZe Button-module__small--2gBmw Button-module__block--2YpGM">
									<span>보러가기</span>
								</button> </a>
						</div>
					</div>
					<div class="SearchSectionBar"></div>
				</div>
			</div>
		</div><br><br>
		<center>
			<div class="SearchBlank-module__container--lrmLU">
				<img class="SearchBlank-module__image--3paDe"
					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMjUiIGhlaWdodD0iMTEwIiB2aWV3Qm94PSIwIDAgMTI1IDExMCI+CiAgICA8ZGVmcz4KICAgICAgICA8bGluZWFyR3JhZGllbnQgaWQ9ImEiIHgxPSIxMDAlIiB4Mj0iMCUiIHkxPSI1MS45MzclIiB5Mj0iNTEuOTM3JSI+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iMCUiIHN0b3AtY29sb3I9IiNGOEY5RkEiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIxMDAlIiBzdG9wLWNvbG9yPSIjRTlFQ0VGIi8+CiAgICAgICAgPC9saW5lYXJHcmFkaWVudD4KICAgIDwvZGVmcz4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZmlsbD0iI0U5RUNFRiIgZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNMTUgMTBsMzIgMTJ2NzhMMTUgODh6Ii8+CiAgICAgICAgPHBhdGggZmlsbD0idXJsKCNhKSIgZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNNzggMTBsMzIgMTJ2NzhMNzggODh6Ii8+CiAgICAgICAgPHBhdGggZmlsbD0iI0RFRTJFNiIgZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNNzggMTBMNDcgMjJ2NzhsMzEtMTJ6Ii8+CiAgICAgICAgPGNpcmNsZSBjeD0iNjEiIGN5PSI1MyIgcj0iOCIgc3Ryb2tlPSIjRjFGM0Y1IiBzdHJva2Utd2lkdGg9IjIiLz4KICAgICAgICA8cGF0aCBzdHJva2U9IiNGMUYzRjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIyIiBkPSJNNjcgNTlsNS42NTcgNS42NTciLz4KICAgIDwvZz4KPC9zdmc+Cg=="
					alt="blank">
				<div class="SearchBlank-module__description--2mIMS">
					<span>검색 결과가 없습니다.</span><br>
				</div>
			</div>
		</center><br><br>
	</s:if>
		<s:else>
			<div>
				<div class="resp-container" style="top: 0px; bottom: 0px;">
					<div class="resp-container--row ">
						<div class="SearchHotel-module__body--HjVRm">
							<div class="SearchHotel-module__content--2xl2M">
								<strong class="SearchHotel-module__destination--131Mv">${searchbox}</strong>&nbsp;
								<span class="SearchHotel-module__description--3v4wM">투어&티켓을 찾으시나요?</span>
							</div>
							<div class="SearchHotel-module__button--1zAVc">
								<a class="SearchHotel-module__link--39zoa"><button type="button"
									onclick="window.location.href='TourList.action?tourname=${searchbox}'"
									class="Button-module__button--227wS Button-module__outline--1gLZe Button-module__small--2gBmw Button-module__block--2YpGM">
									<span>보러가기</span>
								</button>
								</a>
							</div>
						</div>
						<div class="SearchSectionBar"></div>
					</div>
				</div>
			</div>
			<section class="SearchOffers-module__container--2iYUn">
			<div class="resp-container" style="top: 0px; bottom: 0px;">
				<div class="resp-container--row ">
					<div class="SearchOffers-module__header--oYZz1">
						<h3 class="SearchOffers-module__title--_wzmp">여행 상품</h3>
						<span class="SearchOffers-module__count--3mjFQ">검색 결과 <s:property
								value="Tourlist.size()" />개
						</span>
					</div>
					<div>
						<div id="searchTour_list">
							<s:iterator value="Tourlist" status="stat_tour">
								<a href="TourView.action?no=<s:property value="%{no}" />">
									<div id="contents">
										<div id=imageT>
											<s:if test="main_image != null">
												<img
													src="/TMT/upload/tour/<s:property value="%{main_image}" />">
											</s:if>
											<s:else>
												<img src="/TMT/images/noimage.jpg">
											</s:else>
										</div>
										<div id=contentT>
											<h4>
												[<s:property value="region" />]
												<s:property value="name" />
											</h4>
											<font color="orange" size="5"><b><s:property value="price" />원</b></font> / 1인<br>
										</div>
									</div>
								</a>
							</s:iterator>
						</div>
					</div>
				</div>
			</section>
		</s:else>
		
<!-- 	!!!!!!!!!!!!!!!!!!!!!!!!!!!           호텔   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!                  -->	

	<s:if test="Hotellist.size() == 0">
		<div>
			<div class="resp-container" style="top: 0px; bottom: 0px;">
				<div class="resp-container--row ">
					<div class="SearchHotel-module__body--HjVRm">
						<div class="SearchHotel-module__content--2xl2M">
							<strong class="SearchHotel-module__destination--131Mv">어떤</strong>&nbsp;
							<span class="SearchHotel-module__description--3v4wM">숙소를
								찾으시나요?</span>
						</div>
						<div class="SearchHotel-module__button--1zAVc">
							<a class="SearchHotel-module__link--39zoa"><button
									type="button"
									onclick="window.location.href='HotelList.action'"
									class="Button-module__button--227wS Button-module__outline--1gLZe Button-module__small--2gBmw Button-module__block--2YpGM">
									<span>보러가기</span>
								</button> </a>
						</div>
					</div>
				</div>
					<div class="SearchSectionBar"></div>
				</div>
			</div>
		</div><br><br>
		<center>
			<div class="SearchBlank-module__container--lrmLU">
				<img class="SearchBlank-module__image--3paDe"
					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMjUiIGhlaWdodD0iMTEwIiB2aWV3Qm94PSIwIDAgMTI1IDExMCI+CiAgICA8ZGVmcz4KICAgICAgICA8bGluZWFyR3JhZGllbnQgaWQ9ImEiIHgxPSIxMDAlIiB4Mj0iMCUiIHkxPSI1MS45MzclIiB5Mj0iNTEuOTM3JSI+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iMCUiIHN0b3AtY29sb3I9IiNGOEY5RkEiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIxMDAlIiBzdG9wLWNvbG9yPSIjRTlFQ0VGIi8+CiAgICAgICAgPC9saW5lYXJHcmFkaWVudD4KICAgIDwvZGVmcz4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZmlsbD0iI0U5RUNFRiIgZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNMTUgMTBsMzIgMTJ2NzhMMTUgODh6Ii8+CiAgICAgICAgPHBhdGggZmlsbD0idXJsKCNhKSIgZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNNzggMTBsMzIgMTJ2NzhMNzggODh6Ii8+CiAgICAgICAgPHBhdGggZmlsbD0iI0RFRTJFNiIgZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNNzggMTBMNDcgMjJ2NzhsMzEtMTJ6Ii8+CiAgICAgICAgPGNpcmNsZSBjeD0iNjEiIGN5PSI1MyIgcj0iOCIgc3Ryb2tlPSIjRjFGM0Y1IiBzdHJva2Utd2lkdGg9IjIiLz4KICAgICAgICA8cGF0aCBzdHJva2U9IiNGMUYzRjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIyIiBkPSJNNjcgNTlsNS42NTcgNS42NTciLz4KICAgIDwvZz4KPC9zdmc+Cg=="
					alt="blank">
				<div class="SearchBlank-module__description--2mIMS">
					<span>검색 결과가 없습니다.</span><br>
				</div>
			</div>
		</center><br><br>
	</s:if>				
	<s:else>
			<div>
				<div class="resp-container" style="top: 0px; bottom: 0px;">
					<div class="resp-container--row ">
						<div class="SearchHotel-module__body--HjVRm">
							<div class="SearchHotel-module__content--2xl2M">
								<strong class="SearchHotel-module__destination--131Mv">${searchbox}</strong>&nbsp;
								<span class="SearchHotel-module__description--3v4wM">숙소를 찾으시나요?</span>
							</div>
							<div class="SearchHotel-module__button--1zAVc">
								<a class="SearchHotel-module__link--39zoa"><button type="button"
									onclick="window.location.href='HotelList.action?num=1&hotelname=${searchbox}'"
									class="Button-module__button--227wS Button-module__outline--1gLZe Button-module__small--2gBmw Button-module__block--2YpGM">
									<span>보러가기</span>
								</button>
								</a>
							</div>
						</div>
						<div class="SearchSectionBar"></div>
					</div>
				</div>
			</div>
			<section class="SearchOffers-module__container--2iYUn">
			<div class="resp-container" style="top: 0px; bottom: 0px;">
				<div class="resp-container--row ">
					<div class="SearchOffers-module__header--oYZz1">
						<h3 class="SearchOffers-module__title--_wzmp">숙소 상품</h3>
						<span class="SearchOffers-module__count--3mjFQ">검색 결과 <s:property
								value="Hotellist.size()" />개
						</span>
					</div>
					<div>
					<div id="searchHotel_list">
						<s:iterator value="Hotellist" status="stat_hotel">
							<a href="HotelView.action?no=<s:property value='%{no}' />">
								<div id="contents">
									<div id=imageT>
										<s:if test="main_image != null">
											<img
												src="/TMT/upload/hotel/<s:property value="%{main_image}" />">
										</s:if>
										<s:else>
											<img src="/TMT/images/noimage.jpg">
										</s:else>
									</div>
									<div id=contentT>
										<h4>
											[<s:property value="region" />]
											<s:property value="name" />
										</h4>
										<font color="orange" size="5"><b><s:property value="price" />원</b></font> / 1인<br>
									</div>
								</div>
							</a>
						</s:iterator>
					</div>
				</div>
				</div>
			</section>
		</s:else>

</body>
</html>