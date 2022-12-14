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
<link rel="stylesheet" href="http://localhost:9000/css/am-pagination_dmu.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://localhost:9000/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/js/admin.js"></script>
<script src="http://localhost:9000/js/am-pagination.js"></script>
<script src="http://localhost:9000/js/main_header.js"></script>
</head>
<body>
	<iframe src="/header" width="100%" height="200px" scrolling="no" frameborder=0 class="header" style="position:absolute; overflow:hidden;"></iframe>
	<div style="width:100%; height:17vh; color:transparent">헤더</div>
	<main>
		<section data-v-1b9c8af9="" class="sub-contents-wrap">
			<div data-v-0d03d759="" data-v-1b9c8af9=""
				class="sub-top-area notice">
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
			<div data-v-1b9c8af9="" class="top-area">
				<div data-v-1b9c8af9="" class="right-area">
					<div data-v-e4bbf8ae="" data-v-1b9c8af9="" class="search-area">
						<div data-v-0f105554="" data-v-e4bbf8ae="" class="select-area"
							style="width: 11.875rem;">
							<div data-v-0f105554="" id="select21" class=""
								style="width: 11.875rem;">
								<button data-v-0f105554="" type="button" data-value="title"
									class="search-button">제목</button>
								<ul data-v-0f105554="" class="select-list"
									style="display: none;">
									<li data-v-0f105554="" class="" id="title_button"><button
											data-v-0f105554="" type="button" value="title">제목</button></li>
									<li data-v-0f105554="" class="" id="content_button"><button data-v-0f105554=""
											type="button" value="content">내용</button></li>
								</ul>
							</div>
						</div>
						<div data-v-e4bbf8ae="" class="search-form">
							<div data-v-67ca82d2="" data-v-e4bbf8ae="" class="input-area"
								style="width: 25.5rem;">
								<input data-v-67ca82d2="" id="field22" autocomplete="on"
									placeholder="검색어를 입력하세요." maxlength="-1" type="text" class="">
								<!---->
								<!---->
								<!---->
								<!---->
								<!---->
								<a data-v-67ca82d2="" href="javascript:void(0);" class=""></a>
								<!---->
							</div>
							<div data-v-26e42198="" data-v-e4bbf8ae="" class="btn-area">
								<button data-v-26e42198="" id="btn23" type="button"
									class="btn-search">검색</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div data-v-080a389a="" data-v-1b9c8af9="">
				<div data-v-080a389a="" class="snb-area">
					<ul data-v-080a389a="" class="snb">
						<li data-v-080a389a="" class="on"><a data-v-080a389a=""
							role="button" style="cursor: pointer;" data-tab="tab_1" class="tabbox" id="all">전체</a></li>
						<li data-v-080a389a="" class=""><a data-v-080a389a=""
							role="button" style="cursor: pointer;" data-tab="tab_2" class="tabbox" id="디뮤지엄">디뮤지엄</a></li>
						<li data-v-080a389a="" class=""><a data-v-080a389a=""
							role="button" style="cursor: pointer;" data-tab="tab_3" class="tabbox" id="대림미술관">대림미술관</a></li>
						<li data-v-080a389a="" class=""><a data-v-080a389a=""
							role="button" style="cursor: pointer;" data-tab="tab_4" class="tabbox" id="구슬모아당구장">구슬모아당구장</a></li>
					</ul>
				</div>
				<div data-v-26e42198="" class="btn-area">
					<a href="/admin_notice_write">
					<button data-v-26e42198="" id="btn50_1" type="button"
						class="secondary" style="margin-top:30px">글쓰기</button>
					</a>
				</div>
				<div data-v-080a389a="" class="sub-contents-area">
					<div data-v-1b9c8af9="" data-v-080a389a="" slot=""
						class="container">
						<div data-v-1b9c8af9="" data-v-080a389a="" class="search-result">
							총 <strong class="total"></strong>건
						</div>
				
						<div data-v-1b9c8af9="" data-v-080a389a="" class="notice-list">
							<ul data-v-1b9c8af9="" data-v-080a389a="">
							<c:forEach var="vo" items="${list}">
								<li data-v-1b9c8af9="" data-v-080a389a=""><a href="/admin_notice_content/${vo.nid}"
									data-v-1b9c8af9="" data-v-080a389a="" href="javascript:void(0)"><span
										data-v-1b9c8af9="" data-v-080a389a="" class="number">${vo.rno}</span>
										<span data-v-1b9c8af9="" data-v-080a389a="" class="category">${vo.ncategory}</span>
										<div data-v-1b9c8af9="" data-v-080a389a="" class="title-area">
											<strong data-v-1b9c8af9="" data-v-080a389a="" class="title">${vo.ntitle}</strong>
											<span data-v-1b9c8af9=""
												data-v-080a389a="" class="date">${vo.ndate}</span>
										</div>
									</a>
								</li>
							</c:forEach>
						</div>
						<div data-v-1b9c8af9="" data-v-080a389a="" class="no-result" style="display:none;"><p data-v-1b9c8af9="" data-v-080a389a="">작성된 공지사항이 없습니다.</p></div>						
							</ul>
						</div>
						</div> 
					</div>
				</div>
			</div>
						
			<iframe src="/footer" width="100%" height="490px" scrolling="no" frameborder=0 class = "footer" style="margin-bottom:-5px" ></iframe>
			<footer>
				<script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script>
			</footer>
		</section>
	</main>
</body>
</html>