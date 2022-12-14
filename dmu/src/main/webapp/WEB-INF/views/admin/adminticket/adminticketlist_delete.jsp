<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="">
<head>
<meta charset="utf-8">
<link rel="icon" href="/favicon.ico">
<link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard.css" />
<link rel="stylesheet" href="http://localhost:9000/css/font.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;400;500;600;700;800;900&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" href="http://localhost:9000/css/ticket.css">
<link rel="stylesheet" href="http://localhost:9000/css/font.css">
<link rel="stylesheet" href="http://localhost:9000/css/join.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://localhost:9000/js/ticket.js"></script>
<script src="http://localhost:9000/js/main_header.js"></script>
<title>ADMIN | D MUSEUM | DAELIM MUSEUM | 구슬모아당구장</title>
<style>
	img{
		tesxt-aline:center;
	}
</style>
</head>
<body>
	<iframe src="/header" width="100%" height="200px" scrolling="no" frameborder=0 class="header" style="position:absolute; overflow:hidden;"></iframe>
	<div style="width:100%; height:17vh; color:transparent">헤더</div>
	
		
	<main style="height:480px">
		 <form name="ticketDeleteForm" action="/adminticket_delete_check" method="post">
		 	<input type="hidden" name="did" value="${did}">
				<div data-v-ec5a0c2c="" class="root-container">
					<div data-v-ec5a0c2c="" class="content-wrapper">
						<div data-v-ec5a0c2c="" class="body-wrapper">
							<div data-v-25f87e60="" data-v-ec5a0c2c="">
								<div data-v-25f87e60="" class="sub-contents-area">
									<div data-v-6d324aa0="" data-v-7b1f57c8="" class="step-process-area">
										<ul data-v-6d324aa0="">
											<li data-v-6d324aa0="" class="on">
												<span data-v-6d324aa0="" class="no">01</span>
												<span data-v-6d324aa0="" class="txt">ticket list</span>
											</li>
											<li data-v-6d324aa0="" class="on">
												<span data-v-6d324aa0="" class="no">02</span>
												<span data-v-6d324aa0="" class="txt">ticket content</span>
											</li>
											<li data-v-6d324aa0="" class="on">
											<span data-v-6d324aa0="" class="no">03</span>
											<span data-v-6d324aa0="" class="txt">update/delete</span>
											</li>
										</ul>
									</div>
						<div class = "section">
								<div class = "joinContainer">
									<div class = "content">
										<div class = "container">
											<img id="deleteimg" src = "http://localhost:9000/images/join_ok.png" 
												style="width:150px; padding:10px; margin:20px;">
										<h3>버튼을 누르면 삭제가 완료됩니다.</h3>
												<div data-v-8ed31374="" class="use-info-ticket">
													<div data-v-26e42198="" data-v-8ed31374="" class="btn-area">
														<p>
															<br>
														</p>
														<p>
															<br>
														</p>
														<button data-v-26e42198="" type="submit" class="secondary small">삭제완료</button>
														<a href="/adminexhibition_list"><button data-v-26e42198=""  type="button" class="secondary small">리스트</button></a>
													</div>
												</div>
											</div>
											
												</div>
												</div>
											</div>
											
										
											</div>
											<!---->
										</div>
										<!---->
										<!---->
									</div>
								</div>
				
				 </form>
			</main>
			
			
		
	


	
	<iframe src="/footer" width="100%" height="490px" scrolling="no" frameborder=0 class = "footer" style="margin-bottom:-5px" ></iframe>

</body>
</html>