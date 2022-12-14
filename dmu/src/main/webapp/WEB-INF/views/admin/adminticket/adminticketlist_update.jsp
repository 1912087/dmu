<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- JSTL 태그 추가  -->
<!DOCTYPE html>

<html lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="google-site-verification"
	content="IE2hToDnQFmj0qovhKUWmqnaQyMPi7QndNEDR6uoVpI">
<!-- <meta name="twitter:image" content="https://ddcfsharestroage.blob.core.windows.net/share/Store/Homepage/Main/Pc/202201/20220124135922977001.jpg">
    <meta property="og:image" content="https://ddcfsharestroage.blob.core.windows.net/share/Store/Homepage/Main/Pc/202201/20220124135922977001.jpg"> -->
<link rel="icon" href="/favicon.ico">
<link rel="stylesheet" as="style" crossorigin
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard.css" />
<link rel="stylesheet"
	href="http://localhost:9000/css/font.css">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;400;500;600;700;800;900&amp;display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="http://localhost:9000/css/ticket.css">
<script src="http://localhost:9000/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/js/ticket.js"></script>
<script src="http://localhost:9000/js/main_header.js"></script>
<script>
	$(document).ready(function() {
		//새로운 파일선택하는 이벤트 
	let dtarget = "${ vo.dtarget }";
      $("#dtarget").val(dtarget);
      
    let dplace = "${vo.dplace}";
    	$("#dplace").val(dplace);
		$("input[type=file]").change(function() {
			if (window.FileReader) {
				let fname = $(this)[0].files[0].name;
				$("#upload_file").text(fname);
			}
		});
	});

	function maxLengthCheck(object) {
		if (object.value.length > object.maxLength) {
			object.value = object.value.slice(0, object.maxLength);
		}
	}
</script>

<title>ADMIN | D MUSEUM | DAELIM MUSEUM | 구슬모아당구장</title>
<style>
	textarea[name="dtime"]{
		width: 650px;
	    resize: none;
	    height: 90px;
	    padding: 10px;
	    line-height: 20px;
	    border: 0.5px solid #b1b1b1;
	}
	input:not(input[type="file"]) {
	    border: 0.5px solid #b1b1b1;
	    padding: 5px;
	    box-sizing: border-box;
	    width: 250px;
	}
	input#dstart, input#dend {
	    width: 118px !important;
	}
</style>
</head>
<body>
	<iframe src="/header" width="100%" height="200px" scrolling="no"
		frameborder=0 class="header"
		style="position: absolute; overflow: hidden;"></iframe>
	<div style="width: 100%; height: 17vh; color: transparent">헤더</div>
	<main>
		<div data-v-ec5a0c2c="" class="root-container">
			<div data-v-ec5a0c2c="" class="content-wrapper">
				<div data-v-ec5a0c2c="" class="body-wrapper">
					<div data-v-25f87e60="" data-v-ec5a0c2c="">
						<div data-v-25f87e60="" class="sub-contents-area">

							<form name="ticketUpdateForm"
								action="/adminticket_update_check" method="post"
								enctype="multipart/form-data">
								<input type="hidden" name="did" value="${vo.did}"> <input
									type="hidden" name="dfile" value="${vo.dfile}"> <input
									type="hidden" name="dsfile" value="${vo.dsfile}">
								<div data-v-6d324aa0="" data-v-7b1f57c8=""
									class="step-process-area">
									<ul data-v-6d324aa0="">
										<li data-v-6d324aa0="" class="on"><span
											data-v-6d324aa0="" class="no">01</span> <span
											data-v-6d324aa0="" class="txt">ticket list</span></li>
										<li data-v-6d324aa0="" class="on"><span
											data-v-6d324aa0="" class="no">02</span> <span
											data-v-6d324aa0="" class="txt">ticket content</span></li>
										<li data-v-6d324aa0="" class="on"><span data-v-6d324aa0=""
											class="no">03</span> <span data-v-6d324aa0="" class="txt">update/delete</span>
										</li>
									</ul>
								</div>

								<div data-v-25f87e60="" class="container write">
									<div data-v-8ed31374="" data-v-25f87e60=""
										class="reservation-area">
										<!---->
										<div data-v-8ed31374="" class="left">

											<div data-v-8ed31374="" class="img-ticket write">
												<ul>
													<li><label>파일첨부</label> <input type="file"
														name="file1"> <!-- jstl의 if는 조건이 단 하나로 체크될때 사용, 조건이 여러개로 체크될 경우 choose/when -->
														<c:choose>
															<c:when test="${vo.dfile != null }">
																<!--if~else  -->
																<span id="upload_file">${vo.dfile}</span>
															</c:when>
															<c:otherwise>
																<span id="upload_file">선택된 파일 없음</span>
															</c:otherwise>
														</c:choose></li>
												</ul>
											</div>

											<div data-v-8ed31374="" class="title-ticket" style = "flex-direction: inherit !important;">
												<h2 data-v-8ed31374="" class="title">제목</h2>
												<input type="text" name="dtitle" id="dtitle"
													value="${vo.dtitle }"> <!-- <span data-v-8ed31374=""
													class="explan"> </span> -->
											</div>
											<!-- 		 	-->
											<!-- 	exhibition	 -->
											<!-- 		 	-->
											<c:if test="${vo.dcode eq 'exhibition'}">
												<div data-v-8ed31374="" class="info-ticket">
													<input type="hidden" name="dtitle2" value="${vo.dtitle2}" maxlength = "15">
													<input type="hidden" name="dpersonnel" value="${vo.dpersonnel}">
													<input type="hidden" name="dtarget" value="${vo.dtarget}">
													<input type="hidden" name="dnum" value="${vo.dnum}">
													<ul data-v-8ed31374="">
														<li data-v-8ed31374=""><strong data-v-8ed31374=""
															class="title">장소</strong> <span data-v-8ed31374="" class="text">
															<select type="text" name="dplace" id="dplace" value="${vo.dplace }">
																<option value="default">선택하세요</option>
																<option value="디뮤지엄">디뮤지엄</option>
																<option value="대림미술관">대림미술관</option>
																<option value="구슬모아당구장">구슬모아당구장</option>
															</select></span></li>
														<li data-v-8ed31374="" class=""><strong
															data-v-8ed31374="" class="title">전시기간</strong> <span
															data-v-8ed31374="" class="text"><input type="date"
																name="dstart" id="dstart" value="${vo.dstart }">
																~ <input type="date" name="dend" id="dend"
																value="${vo.dend }"></span></li>
														<li data-v-8ed31374=""><strong data-v-8ed31374=""
															class="title">회차</strong> <span data-v-8ed31374=""
															class="text"><input type="text" name="dentertime"
																id="dentertime" value="${vo.dentertime }"></span></li>
														<li data-v-8ed31374="" class=""><strong
															data-v-8ed31374="" class="title">이용요금</strong>
															<p data-v-8ed31374="" class="price">
																<input type="text" name="dprice" id="dprice"
																	maxlength="10" oninput="maxLengthCheck(this)"
															onkeydown="javascript: return event.keyCode == 69 ? false : true" value="${vo.dprice }">
															</p></li>
														<li data-v-8ed31374="" style = "display: flex; width: 100%;"><strong data-v-8ed31374=""
															class="title dtime">운영시간</strong> <span data-v-8ed31374=""
															class="text"><textarea type="text" name="dtime"
																id="dtime">${vo.dtime }</textarea></span></li>
													</ul>
												</div>
											</c:if>
											<!-- 		 	-->
											<!-- 	learn	 -->
											<!-- 		 	-->
											<!-- 		 	-->
											<c:if test="${vo.dcode eq 'learn'}">
												<div data-v-8ed31374="" class="info-ticket">
													<ul data-v-8ed31374="">
														<li data-v-8ed31374=""><strong data-v-8ed31374=""
															class="title">부제목</strong> <span data-v-8ed31374=""
															class="text"><input type="text" name="dtitle2"
																id="dtitle23" value="${vo.dtitle2 }" maxlength = "15"></span></li>
														<li data-v-8ed31374=""><strong data-v-8ed31374=""
															class="title">장소</strong> <span data-v-8ed31374=""
															class="text"><select type="text" name="dplace"
																id="dplace" value="${vo.dplace }">
																<option value="default">선택하세요</option>
																<option value="디뮤지엄">디뮤지엄</option>
																<option value="대림미술관">대림미술관</option>
																<option value="구슬모아당구장">구슬모아당구장</option>
																
																</select></span></li>

														<li data-v-8ed31374="" class=""><strong
															data-v-8ed31374="" class="title">교육기간</strong> <span
															data-v-8ed31374="" class="text"><input type="date"
																name="dstart" id="dstart" value="${vo.dstart }">
																~ <input type="date" name="dend" id="dend"
																value="${vo.dend }"></span></li>
														<li data-v-8ed31374=""><strong data-v-8ed31374=""
															class="title">수업시간</strong> <span data-v-8ed31374=""
															class="text"><input type="text" name="dentertime"
																id="dentertime" value="${vo.dentertime }"></span></li>

														<li data-v-8ed31374="" class=""><strong
															data-v-8ed31374="" class="title">이용요금</strong>
															<p data-v-8ed31374="" class="price">
																<input type="number" name="dprice" id="dprice"
																	maxlength="10" oninput="maxLengthCheck(this)"
															onkeydown="javascript: return event.keyCode == 69 ? false : true" value="${vo.dprice }">
															</p></li>

														<li data-v-8ed31374="" class=""><strong
															data-v-8ed31374="" class="title">정원</strong> <span
															data-v-8ed31374="" class="text"><input
																type="number" name="dpersonnel" id="dpersonnel"
																value="${ vo.dpersonnel }"
																maxlength="10" oninput="maxLengthCheck(this)"
																onkeydown="javascript: return event.keyCode == 69 ? false : true"></span></li>

														<li data-v-8ed31374="" class=""><strong
															data-v-8ed31374="" class="title">대상</strong> <span
															data-v-8ed31374="" class="text"><select type="text"
																name="dtarget" id="dtarget" value="${ vo.dtarget }">
																<option value="default">선택하세요</option>
																<option value="유아">유아</option>
																<option value="어린이">어린이</option>
																<option value="청소년">청소년</option>
																<option value="대학생">대학생</option>
																<option value="성인">성인</option>
																<option value="교사">교사</option>
																<option value="전시해설">전시해설</option>
																</select></span>
														</li>

														<li data-v-8ed31374="" class=""><strong
															data-v-8ed31374="" class="title">교육횟수</strong> <span
															data-v-8ed31374="" class="text"><input
																type="text" name="dnum" id="dnum"
																value="${ vo.dnum }" maxlength="15"></span>
														</li>

														<li data-v-8ed31374="" style = "display: flex; width: 100%;"><strong data-v-8ed31374=""
															class="title">교육시간</strong> <span data-v-8ed31374=""
															class="text"><textarea name="dtime" id="dtime">${vo.dtime}</textarea></span></li>
													</ul>
												</div>
											</c:if>
											<!-- 	event	 -->
											<!-- 		 	-->
											<c:if test="${vo.dcode eq 'event'}">
												<div data-v-8ed31374="" class="info-ticket">
												<input type="hidden" name="dtime" value="${vo.dtime}">
												<input type="hidden" name="dpersonnel" value="${vo.dpersonnel}">
												<input type="hidden" name="dnum" value="${vo.dnum}">
													<ul data-v-8ed31374="">
														<li data-v-8ed31374=""><strong data-v-8ed31374=""
															class="title">부제목</strong> <span data-v-8ed31374=""
															class="text"><input type="text" name="dtitle2"
																id="dtitle2" value="${vo.dtitle2 }" maxlength = "15"></span></li>
														<li data-v-8ed31374=""><strong data-v-8ed31374=""
															class="title">장소</strong> <span data-v-8ed31374=""
															class="text"><select type="text" name="dplace"
																id="dplace" value="${vo.dplace }">
																<option value="default">선택하세요</option>
																<option value="디뮤지엄">디뮤지엄</option>
																<option value="대림미술관">대림미술관</option>
																<option value="구슬모아당구장">구슬모아당구장</option>
																</select></span></li>

														<li data-v-8ed31374="" class=""><strong
															data-v-8ed31374="" class="title">기간</strong> <span
															data-v-8ed31374="" class="text"><input type="date"
																name="dstart" id="dstart" value="${vo.dstart }">
																~ <input type="date" name="dend" id="dend"
																value="${vo.dend }"></span></li>
														<li data-v-8ed31374=""><strong data-v-8ed31374=""
															class="title">회차</strong> <span data-v-8ed31374=""
															class="text"><input type="text" name="dentertime"
																id="dentertime" value="${vo.dentertime }"></span></li>
														<li data-v-8ed31374="" class=""><strong
															data-v-8ed31374="" class="title">이용요금</strong>
															<p data-v-8ed31374="" class="price">
																<input type="number" name="dprice" id="dprice"
																	maxlength="10" oninput="maxLengthCheck(this)"
																	onkeydown="javascript: return event.keyCode == 69 ? false : true" 
																	value="${vo.dprice }">
															</p></li>

														<li data-v-8ed31374="" class=""><strong
															data-v-8ed31374="" class="title">대상</strong> <span
															data-v-8ed31374="" class="text"><select type="text" name="dtarget" id="dtarget" value="${ vo.dtarget }">
																<option value="default">선택하세요</option>
																<option value="전체연령 관람가능">전체연령 관람가능</option>
																<option value="15세이상 관람 가능">15세이상 관람 가능</option>
																<option value="19세이상 관람 가능">19세이상 관람 가능</option>
															</select></span>
														</li>
														
													</ul>
												</div>
											</c:if>
											<strong data-v-8ed31374="" class="title" style = "margin-top: 25px; display: inline-block; font-size: 25px;">이용 정보</strong>
											<div data-v-8ed31374="" class="organ-ticket">
												<p data-v-8ed31374="" class="comment">
												<div data-v-8ed31374="" class="contents">
													<div class="editor-contents-area">
														<textarea name="dinformation">${vo.dinformation }</textarea>
														<p>
															<br>
														</p>
													</div>
												</div>
											</div>

											<div data-v-8ed31374="" class="use-info-ticket">
												<div data-v-26e42198="" data-v-8ed31374="" class="btn-area">
													<button data-v-26e42198="" name="btn25"
														id="btnTicketUpdate" type="button" class="secondary small">수정완료</button>
													<a href="/adminexhibition_list"><button
															data-v-26e42198="" type="button" class="secondary small">리스트</button></a>
												</div>
											</div>
										</div>


									</div>
									<!---->
								</div>
								<!---->
								<!---->
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<iframe src="/footer" width="100%" height="490px" scrolling="no"
		frameborder=0 class="footer" style="margin-bottom: -5px"></iframe>

	<div class = "background_exhibition update">
			<div class = "window_exhibition update">
				<div class = "popup_exhibition update">
					<p class="update" id = "popup_title"></p>
					<div class="popup_button update" style="border:none;">
						<button type = "button" id = "popup_close" style = "cursor:pointer;">확인</button>
					</div>
				</div>
			</div>
		</div>
</body>
</html>