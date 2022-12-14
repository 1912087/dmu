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
<link rel="stylesheet" href = "http://localhost:9000/css/mypage.css">
<link rel="stylesheet" href = "http://localhost:9000/css/am-pagination_dmu.css">
<link rel="stylesheet" href = "http://localhost:9000/css/adminpage.css">
<script src = "http://localhost:9000/js/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src = "http://localhost:9000/js/admin_member.js"></script>
<script src = "http://localhost:9000/js/am-pagination.js"></script>
<script src = "http://localhost:9000/js/main_header.js"></script>
<script>
$(document).ready(function(){
	
	let dbCount = '${dbCount}'
	let rpage = '${rpage}'
	let pageSize = '${pageSize}'
	
	//페이징 리스트 출력
	function paging(dbCount, rpage, pageSize) {
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
           $(location).attr('href', "http://localhost:9000/dmu/adminpage_reservation_list?rpage="+e.page);         
    });
	
	
	//popup
	$(".reservation_detail").click(function(){
		$(".background_reservation").addClass("show");
		$(".window_reservation").addClass("show");
		$(".popup_close").click(function(){
			$(".background_reservation").removeClass("show");
			$(".window_reservation").removeClass("show");
		});
	});
	

});



</script>
 
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
												<a class="" href="/adminpage_member_list">회원관리</a>
											</li>
											<c:if test="${sessionScope.member.mid == 'master'}">
											<li class="">
												<a class="" href="/adminpage_admin_list">관리자승인</a>
											</li>
											</c:if>
											<li class="">
												<a class="" href="/adminpage_reservation_list" style="color:black; font-weight:700;">예매관리</a>
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
						<h2>예매관리</h2>
					</div>
					<div class="myinfo">
						<div class="myinfo-box">
						<div style="display:flex; justify-content:space-between;">
						<div data-v-1b9c8af9="" data-v-080a389a="" class="search-result">
							총 <strong class='total'>${dbCount}</strong>건
						</div>
						<div class="search-part">
							<input type="text" name="search" placeholder="티켓번호/이벤트명/예약자명으로만 검색 가능합니다" class="search-bar-reserve">
							<button class="search-btn-reserve">검색</button>
						</div>
						</div>
								<div data-v-1b9c8af9="" data-v-080a389a="" class="no-result" style="display:none;"><p data-v-1b9c8af9="" data-v-080a389a="">검색 결과가 없습니다.</p></div>
								<div class="info-list">
									<table class="info-table">
										<thead>
											<tr>
												<th>분류</th>
												<th>티켓번호</th>
												<th>이벤트명</th>
												<th>예약자명</th>
												<th>티켓금액</th>
												<th>티켓매수</th>
												<th>총 금액</th>
												<th>관람일</th>
												<th>예약일</th>
												<th>관리자모드</th>
												 
											</tr>
										</thead>
										<tbody>
										<c:forEach var="vo" items="${list}">
											<tr>												 
												<td >${vo.dcode}</td>											 
												<td  id="${vo.rid}">  ${vo.rid} </td> <!-- 티켓번호 -->
 
												<td>${vo.dtitle }</td>   <!-- 전시/이벤트 명 --> 
												<td>${vo.mname }</td>   <!-- 예약자 명 -->
												<td>${vo.dpricech }</td>   <!-- 티켓금액 -->
												<td>${vo.rtotal }</td>   <!-- 티켓매수 -->
												<td>${vo.rallpricech }</td>   <!-- 총 금액 -->
												<td>${vo.rdateda }</td>   <!-- 관람일 -->
												<td>${vo.rokdatech }</td>   <!-- 예약일 -->
													<c:choose>
														<c:when test="${vo.rid == 'n'}">  <!-- 예약취소 진행 -->  
															<td>취소완료</td>
														</c:when>
															<c:otherwise>
																<td><button class="reservation_detail_admin reservation_detail" type="button" id="${vo.rid}" > 자세히보기 </button></a>  </td>
														</c:otherwise>
													</c:choose>
											</tr>
										</c:forEach>
										</tbody>
									</table>
								</div>
				 <div data-v-650d6904="" data-v-1b9c8af9="" class="pagination-area" data-v-080a389a="" id="ampaginationsm" style="text-align:center;"> 
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
<!-- 							 <button data-v-650d6904="" type="button" class="btn-next">
								next</button>
							<button data-v-650d6904="" type="button" class="btn-last">
								last</button> -->
						</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<iframe src="/footer" width="100%" height="490px" scrolling="no" frameborder=0 class = "footer" style="margin-bottom:-5px" ></iframe>


</body>
</html>
