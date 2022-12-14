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
<meta name="format-detection" content="telephone=no">	
<!-- <meta name="twitter:image" content="https://ddcfsharestroage.blob.core.windows.net/share/Store/Homepage/Main/Pc/202201/20220124135922977001.jpg">
    <meta property="og:image" content="https://ddcfsharestroage.blob.core.windows.net/share/Store/Homepage/Main/Pc/202201/20220124135922977001.jpg"> -->
<link rel="icon" href="/favicon.ico">
<link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard.css" />
<link rel="stylesheet" href="http://localhost:9000/css/font.css">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;400;500;600;700;800;900&amp;display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="http://localhost:9000/css/event_page.css"> 
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://localhost:9000/js/tag_page.js"></script>
<script src="http://localhost:9000/js/main_header.js"></script>
<script>
$(document).ready(function() {
	let list_check = "${list}";
	if(!$.isEmptyObject(list_check)){
		$(".no-result").css("display", "block");
	}
	
	event_past_list("all");
	
	$(".tabbox").click(function(){
		$(".snb-area .snb li").removeClass("on");
		$(this).parent().addClass("on");
		var kind = $(this).attr("id");
		 
		event_past_list(kind);
	});//click
	
	function event_past_list(kind){
		
		$.ajax({ 
			url : '/event_page_json',
			type : "post" , 
			cache : false,
			headers : {"cache-control":"no-cache", "pragma": "no-cache"},
			data : {"dplace" : kind},
			success : function(data){
				let dataset = JSON.parse(data);
				
				var output = "<div data-v-e3917d8a='' class='container' id='js-load' class='main'>"
					output += "<ul data-v-e3917d8a='' class='program-list'>";
					
				for(aj of dataset.list){
					output += "<li data-v-e3917d8a='' class='lists_item js-load'>"
					output += "<a data-v-e3917d8a='' href='javascript:void(0);' style='cursor: auto;'>"
					output += "<div data-v-e3917d8a='' class='thumb'>"
					output += "<img data-v-2fed1a9a='' data-v-e3917d8a=''  src='http://localhost:9000/upload/" + aj.dsfile +"' alt='"+aj.dtitle +"' style=''>"
					output += "</div>"
					output += "<div data-v-e3917d8a='' class='info'>"
					output += "<span data-v-e3917d8a='' class='place'>" + aj.dplace +" </span>"
					output += "<strong data-v-e3917d8a='' class='title'> " + aj.dtitle +" </strong>"
					output += "</div></a></li>"
					
				}
					
				var	output1 = "<div data-v-e3917d8a='' class='btn-program-more' >"
					output1 += "<div data-v-26e42198='' data-v-e3917d8a='' class='btn-area' id='js-btn-wrap' class='btn-wrap'>"
					output1 += "<button data-v-26e42198='' id='btn50' name='btn50' type='button' class='secondary more' >더보기</button>"
					output1 += "</div></div>"
					
				var paging_list = "<div data-v-650d6904='' data-v-1b9c8af9='' class='pagination-area' data-v-080a389a='' id='ampaginationsm'>"
					paging_list +="</div>"
				
				output += "</ul></div> ";
				
				if(dataset.list.length != 0){
				
					$(".no-result").css("display","none");
					$(".btn-program-more").remove();	
					$("#js-load").remove();
					$("#contents").append(output);
					$(".container").append(paging_list);
					$("#contents").after(output1);
					
					load('#js-load', '6', '#js-btn-wrap');
					
					$("#btn50").click(function(){
						 load('#js-load', '6', '#js-btn-wrap');
					});
					
				}else{
					$(".btn-program-more").remove();
					$("#js-load").remove();
					$(".no-result").css("display","block");
				}
			},//success
			error : function(data){
				alert('error');
			}
		});//ajax
	}//function - event_past_list
	
	
	function load(id, cnt, btn) {
	    var girls_list = id + " .js-load:not(.active)";
	    var girls_length = $(girls_list).length;
	    var girls_total_cnt;
	    if (cnt < girls_length) {
	        girls_total_cnt = cnt;
	    }else {
	        girls_total_cnt = girls_length;
	        $(".btn-program-more").hide();
	    }

	    $(girls_list + ":lt(" + girls_total_cnt + ")").addClass("active");
	}
});//ready
</script>
 
 
<title>D MUSEUM | DAELIM MUSEUM | 구슬모아당구장</title>
<style>
	.evnet_title li:first-child{
		background-image: url(http://localhost:9000/images/home.svg);
	    background-repeat: no-repeat;
	    background-size: contain;
	    background-position: center;
	    height: 15px;
	    margin-right: 10px;
	}
</style>
</head>
<body>
	<iframe src="/header" width="100%" height="200px" scrolling="no" frameborder=0 class="header" style="position:absolute; overflow:hidden;"></iframe>
	<div style="width:100%; height:17vh; color:transparent">헤더</div>

 
			<main>
	<div class="root-container">
		<div class="content-wrapper">
			<div data-v-47166101="">
			<section data-v-e3917d8a="" class="sub-contents-wrap">
				<div data-v-4052871d="" data-v-e3917d8a=""
					class="sub-top-area event">
					<div data-v-4052871d="" class="container">
						 <ul data-v-4052871d="" class="event-type-list">
                     <li data-v-4052871d="" class="on"><a data-v-4052871d=""
                        href="javascript:void(0);">이벤트</a></li>
                  		</ul>
						<nav data-v-4052871d="">
							<ul data-v-4052871d="" class = "evnet_title">
								<li data-v-0d03d759="" style="cursor: pointer;"><a href="/index" style="opacity:0;">HOME</a></li>
								<li data-v-4052871d="">EVENT</li>
								<li data-v-4052871d="">이벤트</li>
								<!---->
							</ul>
						</nav>
					</div>
				</div>
				<div data-v-e3917d8a="" class="program-visual">
					<div data-v-e3917d8a="" class="program-title">
						<strong data-v-e3917d8a="">NOW</strong>
					</div>
					<div data-v-e3917d8a="" class="visual-list">
						<ul data-v-e3917d8a="">
							<li data-v-e3917d8a=""><div data-v-e3917d8a=""
									class="background-area">
									<div data-v-e3917d8a="" class="pc"
										style="background-image: url(&quot;https://cdn.daelimmuseum.org/Program/Event/List/E/Big/202205/20220506175734778001.png&quot;);"></div>
									<div data-v-e3917d8a="" class="mo"
										style="background-image: url(&quot;https://cdn.daelimmuseum.org/Program/Event/List/E/Big/202205/20220506175734778001.png&quot;);"></div>
								</div>
								<div data-v-e3917d8a="" class="slogan-area">
									<div data-v-e3917d8a="" class="inner">
										<span data-v-e3917d8a="" class="gallery">디뮤지엄</span><strong
											data-v-e3917d8a="" class="title">로맨틱 로드 :
											성수동&amp;서울숲의 로맨틱한 플레이스</strong>
										<p data-v-e3917d8a="" class="explain">《어쨌든, 사랑: Romantic
											Days》전시와 함께 두근거리는 하루를 만들어줄 로맨틱한 장소를 만나보세요.</p>
										<span data-v-e3917d8a="" class="time"> 2022.07.31 ~
											2022.10.30 </span><span data-v-e3917d8a="" class="place">디뮤지엄
										</span>
										<div data-v-e3917d8a="" class="btn-program-visual">
											<div data-v-26e42198="" data-v-e3917d8a="" class="btn-area">
												<a href="/event_page_det"><button data-v-26e42198="" id="btn49" type="button" class="secondary small">자세히 보기</button></a>
											</div>
											<!---->
										</div>
									</div>
								</div>
								</li>
						</ul>
					</div>
				</div>
				<div data-v-e3917d8a="" class="program-past">
					<div data-v-e3917d8a="" class="program-title">
						<strong data-v-e3917d8a="">PAST</strong>
					</div>
					<div data-v-080a389a="" data-v-e3917d8a="">
						<div data-v-080a389a="" class="snb-area">
							<ul data-v-080a389a="" class="snb ">
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
						<div data-v-080a389a="" class="sub-contents-area"></div>
						<div data-v-080a389a="" class="sub-contents-area">
							<!---->
						</div>
						<div data-v-080a389a="" class="sub-contents-area">
							<!---->
						</div>
						<div data-v-080a389a="" class="sub-contents-area">
							<!---->
						</div>
					</div>
					<%-- <c:if test="${ not empty list }"> --%>
					<div data-v-e3917d8a="" class="sub-contents-area" id="contents" >
						<%-- <div data-v-e3917d8a="" class="container" id="js-load" class="main">
							<ul data-v-e3917d8a="" class="program-list">
								<c:forEach var="vo" items="${list}">
									<li data-v-e3917d8a="" class="lists__item js-load">
										<a data-v-e3917d8a="" href="javascript:void(0);" style="cursor: auto;">
											<div data-v-e3917d8a="" class="thumb">
												<img data-v-2fed1a9a="" data-v-e3917d8a="" 
													src="http://localhost:9000/upload/${vo.dsfile }" alt="${vo.dtitle }" style="">
											</div>
											<div data-v-e3917d8a="" class="info">
												<span data-v-e3917d8a="" class="place">${vo.dplace }</span>
												<strong data-v-e3917d8a="" class="title"> ${vo.dtitle }</strong>
											</div>
										</a>
									</li>
								</c:forEach>
							</ul>
						</div> --%>
					</div>
					<%-- </c:if> --%>
				<div data-v-1b9c8af9="" data-v-080a389a="" class="no-result" style="display:none;"><p data-v-1b9c8af9="" data-v-080a389a="">지난 이벤트가 없습니다.</p></div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	</div>
</main>
		 
 

		<button class="goto-top">상단으로 이동</button>
	 
	<!-- built files will be auto injected -->
	<footer>
		<!-- 0510 네이버 공통 js 추가 -->
		<script type="text/javascript" src="//wcs.naver.net/wcslog.js">
			
		</script>
	</footer>

	<script type="text/javascript"
		src="/js/chunk-vendors.85a954b2b4f1348cc700.js"></script>
	<script type="text/javascript" src="/js/index.85a954b2b4f1348cc700.js"></script>
<iframe src="/footer" width="100%" height="490px" scrolling="no" frameborder=0 class = "footer" style="margin-bottom:-5px" ></iframe>

</body>
</html>