<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ADMIN | D MUSEUM | DAELIM MUSEUM | 구슬모아당구장</title>
<link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard.css" />
<link rel="stylesheet" href="http://localhost:9000/css/font.css">
<link rel="stylesheet" href="http://localhost:9000/css/main_css.css">
<link rel="stylesheet" href="http://localhost:9000/css/notice.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src = "http://localhost:9000/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/js/admin.js"></script>
<script src="http://localhost:9000/js/main_header.js"></script>
<script>
	$(document).ready(function(){
		let ncategory = "${ vo.ncategory }"
		$(".select-area-write").val(ncategory);
	});
</script>
</head>
<body>
	<iframe src="/header" width="100%" height="200px" scrolling="no" frameborder=0 class="header" style="position:absolute; overflow:hidden;"></iframe>
	<div style="width:100%; height:17vh; color:transparent">헤더</div>
	<form name="noticeUpdateForm" action="/admin_notice_update_check" method="post">
	<input type="hidden" name="nid" value="${vo.nid}">
	<main>
		<section class="sub-contents-wrap">
			<div data-v-0d03d759="" class="sub-top-area notice">
				<div data-v-0d03d759="" class="container">
					<h2 data-v-0d03d759="">공지사항</h2>
					<nav data-v-0d03d759="">
						<ul data-v-0d03d759="">
							<li data-v-0d03d759="" style="width:15px;background-position: center !important;">
                            	<a href="/index" style="opacity:0; display: flex; width: 15px; height: 15px;">HOME</a>
                            </li>
							<!---->
							<li data-v-0d03d759="">공지사항</li>
							<!---->
						</ul>
					</nav>
				</div>
			</div>
			<div class="sub-contents-area">
				<div class="container">
					<div class="notice-view-area">
						<div class="base-info-area">
							<div class="title-area">
								<strong class="title">공지사항 작성</strong>
							</div>
						</div>
						<div class="notice-content-write">

							<table class="MsoTableGrid" border="1" cellspacing="0"
								cellpadding="0" width="100%"
								style="width: 898.369px; letter-spacing: -0.3px; border: none;">

								<ul>
									<li>
									<label>카테고리</label> 
									<select name="ncategory" class="select-area-write">
											<option value="default">선택</option>
											<option value="디뮤지엄">디뮤지엄</option>
											<option value="대림미술관">대림미술관</option>
											<option value="구슬모아당구장">구슬모아당구장</option>
											<option value="뮤지엄샵">뮤지엄샵</option>
									</select></li>
									<li>
										<label>제목</label> 
										<input type="text" name="ntitle" class="input-area-write" id="ntitle" value="${vo.ntitle}">
									</li>
									<li>
										<label>내용</label> 
										<textarea name="ncontent" class="input-area-write" style="height:30rem">${vo.ncontent}</textarea>
									</li>
								</ul>
							</table>
							<p class="a" style="line-height: normal;">
								<br>
							</p>
						</div>
						<!---->
					</div>
					<div class="btn-bottom-area">
						<div data-v-26e42198="" class="btn-area">
							<button data-v-26e42198="" id="btn501" type="button"
								class="secondary">수정완료</button>
						<a href="/admin_notice_content/${vo.nid}">
							<button data-v-26e42198="" id="btn50" type="button"
								class="secondary">이전페이지</button>
						</a>
						<a href="/admin_notice_list">
							<button data-v-26e42198="" id="btn50" type="button"
								class="secondary">목록</button></a>
						</div>
					</div>
				</div>
			</div>
			
	<div class = "background_notice">
		<div class = "window_notice">
			<div class = "popup_notice">
				<p id = "popup_noticeUpdate"></p>
				<div class="popup_button">
					<button type = "button" id = "popup_close" style = "cursor:pointer;">확인</button>
				</div>
			</div>
		</div>
	</div>
	<iframe src="/footer" width="100%" height="490px" scrolling="no" frameborder=0 class = "footer" style="margin-bottom:-5px" ></iframe>
			<!-- built files will be auto injected -->
			<footer>
				<!-- 0510 네이버 공통 js 추가 -->
				<script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script>
			</footer>
		</section>
	</main>
</form>
</body>
</html>