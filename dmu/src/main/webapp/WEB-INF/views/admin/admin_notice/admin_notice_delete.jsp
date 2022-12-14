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
<script src="http://localhost:9000/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/js/admin.js"></script>
<script src="http://localhost:9000/js/main_header.js"></script>
</head>
<body>
	<iframe src="/header" width="100%" height="200px" scrolling="no" frameborder=0 class="header" style="position:absolute; overflow:hidden;"></iframe>
	<div style="width:100%; height:17vh; color:transparent">헤더</div>
	<form name="noticeDeleteForm" action="/admin_notice_delete_check" method="post">
			<input type="hidden" name="nid" value="${nid}">
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
								<strong class="title">삭제하시겠습니까?</strong>
							</div>
						</div>
						<!---->
						<div class="list-bottom-area">
<!-- 							<ul>
								<li class="next"><strong>다음글</strong><a
									href="/noticeDetail/9" class=""> 신규 멤버십 &lt;D GREW&gt; 런칭 및
										기존 멤버십 안내 </a></li>
							</ul> -->
						</div>
					</div>
					<div class="btn-bottom-area">
						<div data-v-26e42198="" class="btn-area">
							<button data-v-26e42198="" id="btn62" type="submit"
								class="secondary">예</button>
						<a href="/admin_notice_content/${nid}">
							<button data-v-26e42198="" id="btn50" type="button"
								class="secondary">아니요</button>
						</a>
						<a href="/admin_notice_list">
							<button data-v-26e42198="" id="btn62" type="button"
								class="secondary">목록</button></a>
						</div>
					</div>
				</div>
			</div>
			<iframe src="/footer" width="100%" height="490px" scrolling="no" frameborder=0 class = "footer" style="margin-bottom:-5px" ></iframe>
		</section>
	</main>
</form>
</body>
</html>