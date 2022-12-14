<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN | D MUSEUM | DAELIM MUSEUM | 구슬모아당구장</title>
<link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard.css" />
<link rel="stylesheet" href="http://localhost:9000/css/font.css">
<link rel="stylesheet" href="http://localhost:9000/css/mypage.css">
<link rel="stylesheet" href="http://localhost:9000/css/am-pagination_dmu.css">
<link rel="stylesheet" href="http://localhost:9000/css/adminpage.css">
<script src="http://localhost:9000/js/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://localhost:9000/js/admin_member.js"></script>
<script src="http://localhost:9000/js/am-pagination.js"></script>
<script src="http://localhost:9000/js/main_header.js"></script>
<script>
$(document).ready(function(){
	
	let dbCount = '${dbCount}'
	let rpage = '${rpage}'
	let pageSize = '${pageSize}'
	
	function paging(dbCount, rpage, pageSize){
		//페이징 리스트 출력
		var pager = jQuery('#ampaginationsm').pagination({
		
		    maxSize: 5,	    		// max page size
		    totals: dbCount,	// total rows	
		    page: rpage,		// initial page		
		    pageSize: pageSize,	// max number items per page
		
		    // custom labels		
		    lastText: '&raquo;&raquo;', 		
		    firstText: '&laquo;&laquo;',		
		    prevText: '&laquo;',		
		    nextText: '&raquo;',
				     
		    btnSize:'sm'	// 'sm'  or 'lg'		
		});
		
	}

	paging(dbCount, rpage, pageSize);
	
	//페이징 번호 클릭 시 이벤트 처리
  	jQuery('#ampaginationsm').on('am.pagination.change',function(e){		
		   jQuery('.showlabelsm').text('The selected page no: '+e.page);
           $(location).attr('href', "http://localhost:9000/dmu/adminpage_member_list?rpage="+e.page);         
    });  
});//ready
</script>
<style>
</style>
</head>
<body>
	<iframe src="/header" width="100%" height="200px" scrolling="no" frameborder=0 class="header" style="position:absolute; overflow:hidden;"></iframe>
	<div style="width:100%; height:17vh; color:transparent">헤더</div>
	<!-- 사이드 메뉴 -->
	<div class = "main">
		<div class = "section">
			<div class = "container">
				<aside class="mypage">
					<div class="mypage-list">
						<a href="/adminpage_main" class="mypage-main">
							<strong class="menu-title">ADMIN PAGE</strong>
						</a>
						<div class="mypage-menu-list">
							<ul>
								<li class="on">
									<a class="menu-title" href="#">ADMIN</a>
									<div class="sub-menu-list">
										<ul>
											<li class="">
												<a class="" href="/adminpage_member_list" style="color:black; font-weight:700;">회원관리</a>
											</li>
											<c:if test="${sessionScope.member.mid == 'master'}">
											<li class="">
												<a class="" href="/adminpage_admin_list">관리자승인</a>
											</li>
											</c:if>
											<li class="">
												<a class="" href="/adminpage_reservation_list">예매관리</a>
											</li>
											<li class="">
												<a class="" href="/adminpage_inquiry_list">1대1 문의</a>
											</li>
										</ul>
									</div>
								</li>
								<li class="on">
									<a class="menu-title">CONTENT</a>
									<div class="sub-menu-list">
										<ul>
											<li class="">
												<a class="" href="/adminexhibition_list" target="_blank">전시회 리스트 작성</a>
											</li>
											<li class="">
												<a class="" href="/admin_notice_list" target="_blank">공지사항 작성</a>
											</li>
										</ul>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</aside>

				<%-- 마이페이지 content --%>
				<div class="sub-contents">
					<div class="page-title">
						<h2>회원관리</h2>
					</div>
					<div class="myinfo">
						<div class="myinfo-box">
						<div style="display:flex; justify-content:space-between;">
						<div data-v-1b9c8af9="" data-v-080a389a="" class="search-result">
							총 <strong class='total'>${dbCount}</strong>건
						</div>
						<div class="search-part">
							<input type="text" name="search" placeholder="아이디/회원명/전화번호만 검색 가능합니다" class="search-bar">
							<button class="search-btn">검색</button>
						</div>
						</div>
					<div class="top-search-area">
								<div data-v-1b9c8af9="" data-v-080a389a="" class="no-result" style="display:none;"><p data-v-1b9c8af9="" data-v-080a389a="">검색 결과가 없습니다.</p></div>
								<div class="info-list">
									<table class="info-table">
										<thead>
											<tr>
												<th>아이디</th>
												<th>회원명</th>
												<th>전화번호</th>
												<th>이메일</th>
												<th>가입일자</th>
												<th>상태</th>
												<th>자세히보기</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach var="vo" items="${list}">
											<tr>
												<td class="memberId">${vo.mid}</td>
												<td>${vo.mname}</td>
												<td>${vo.pnumber}</td>
												<td>${vo.email}</td>
												<td>${vo.ddate}</td>
										<c:choose>
											<c:when test="${vo.unregister == 'n'}">
												<td>탈퇴</td>
											</c:when>
											<c:otherwise>
												<td>가입완료</td>
											</c:otherwise>
										</c:choose>
											<td><button class="member_detail"><a href="#">자세히보기</a>
											</button></td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
								</div>
							<div data-v-650d6904="" data-v-1b9c8af9="" class="pagination-area" data-v-080a389a="" id="ampaginationsm"
								style="text-align: center;">
 						<button data-v-650d6904="" type="button" disabled="disabled"
								class="btn-first">first</button>
							<button data-v-650d6904="" type="button" disabled="disabled"
								class="btn-prev">prev</button>
							<ul data-v-650d6904="">
								<li data-v-650d6904="" class="on"><a data-v-650d6904=""
									href="javascript:void(0);" role="button">1</a></li>
								<li data-v-650d6904="" class="on"><a data-v-650d6904=""
									href="javascript:void(0);" role="button">2</a></li>
								<li data-v-650d6904="" class="on"><a data-v-650d6904=""
									href="javascript:void(0);" role="button">3</a></li>
							</ul> 
<!-- 							<button data-v-650d6904="" type="button" class="btn-next">
								next</button>
							<button data-v-650d6904="" type="button" class="btn-last">
								last</button>  -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<iframe src="/footer" width="100%" height="490px" scrolling="no" frameborder=0 class = "footer" style="margin-bottom:-5px" ></iframe>
	
	<div class = "background_member">
		<div class = "window_member">
			<div class = "popup_member">
				<p class = "popup_title">회원정보</p>
				<div class="popup_detail">
								<table class="popup_detail_table">
										<thead>
											<tr>
												<th>아이디</th>
												<td class="mid">${vo.mid}</td>
											</tr>
											<tr>
												<th>회원명</th>
												<td class="mname">${vo.mname}</td>
											</tr>
											<tr>
												<th>전화번호</th>
												<td class="pnumber">${vo.pnumber}</td>
											</tr>
											<tr>
												<th>이메일</th>
												<td class="email">${vo.email}</td>
											</tr>
											<tr>
												<th>생년월일</th>
												<td class="birth">${vo.birth}</td>
											</tr>
											<tr>	
												<th>주소</th>
												<td class="address">${vo.address}</td>
											</tr>
											<tr>
												<th>성별</th>
												<td class="gender">${vo.gender}</td>
											</tr>
											<tr>
												<th>회원유형</th>
												<td class="nationality">${vo.nationality}</td>
											</tr>
											<tr>
												<th>가입일자</th>
												<td class="ddate">${vo.ddate}</td>
											</tr>
											<tr>	
												<th>상태</th>
												<td class="unregister">${vo.unregister}</td>
											</tr>
										</thead>
									</table>
				
				</div>
				<div class = "popup_button">
					<button type = "button" class = "popup_close">확인</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>