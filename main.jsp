<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Happydraw!</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
				<meta name="description" content="Parallax Content Slider with CSS3 and jQuery" />
				<meta name="keywords" content="slider, animations, parallax, delayed, easing, jquery, css3, kendo UI" />
				<meta name="author" content="Codrops" />
				<link rel="shortcut icon" href="../favicon.ico"> 
				<link rel="stylesheet" type="text/css" href="css/demo.css" />
				<link rel="stylesheet" type="text/css" href="css/style.css" />
				<script type="text/javascript" src="./resources/js/modernizr.custom.28468.js"></script>
				<link href='http://fonts.googleapis.com/css?family=Economica:700,400italic' rel='stylesheet' type='text/css'>
				<noscript>
					<link rel="stylesheet" type="text/css" href="css/nojs.css" />
				</noscript>
		<script src="https://kit.fontawesome.com/e8f495f95b.js"
			crossorigin="anonymous"></script>
		
		<!-- Favicon-->
		<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
		<!-- Bootstrap icons-->
		<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
		<!-- Core theme CSS (includes Bootstrap)-->
		<link rel="stylesheet" href="./resources/css/styles.css" />
		</head>
<body>
	<!-- 상단바-->
	<jsp:include page="menu.jsp" />

	<div class="container">
		<!-- Codrops top bar -->
		<div id="da-slider" class="da-slider">
			<div class="da-slide">
				<h2>I A B</h2>
				<p>여러분의 아이앱! 새 상품을 가져보세요</p>
				<a href="draw.jsp" class="da-link">응모하러 가기</a>
				<div class="da-img"><img src="./resources/Image/iab.jpg" width="330" height="300" alt="iab.jpg" /></div>
			</div>
			<div class="da-slide">
				<h2>MacBook Pro</h2>
				<p>Apple M2 칩(8코어 CPU, 10코어 GPU, 16코어 Neural Engine) <hr>
				</p>
				<a href="#" class="da-link">응모하러 가기</a>
				<div class="da-img"><img src="./resources/Image/mac.jpg" width="330" height="300" alt="mac.jpg" /></div>
			</div>
			<div class="da-slide">
				<h2>Jordan 1 Mid Dark Teal</h2>
				<p>에어조던 미드 다크틸 지금 응모하세요 !</p>
				<a href="#" class="da-link">응모하러 가기</a>
				<div class="da-img"><img src="./resources/Image/jo.jpg" width="330" height="340" alt="image01" /></div>
			</div>
			<div class="da-slide">
				<h2>AirPods Max</h2>
				<p>새롭게 선보이는 AirPods Max. <br> 감동적인 하이파이 오디오와 AirPods 특유의 매혹적인 사용성의 완벽한 조합.</p>
				<a href="#" class="da-link">응모하러 가기</a>
				<div class="da-img"><img src="./resources/Image/max.jpg" width="330" height="340" alt="image01" /></div>
			</div>
			<nav class="da-arrows">
				<span class="da-arrows-prev"></span>
				<span class="da-arrows-next"></span>
			</nav>
		</div>
	</div>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript" src="./resources/js/jquery.cslider.js"></script>
	<script type="text/javascript">
		$(function() {
		
			$('#da-slider').cslider();
			
		});
	</script>	

	<!-- Section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top" src="./resources/Image/iab.jpg"
							width="450" height="300" alt="강아지 케이프 -오렌지" />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">아이앱</h5>
								<br>
								응모기간 4/17 - 4/23
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">


							<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								<div class="text-center">
									<a class="btn btn-outline-dark mt-auto" href="cape.jsp">응모하기</a>
								</div>
							</div>


						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Sale badge-->
						<div class="badge bg-secondary text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">마감 임박</div>
						<!-- Product image-->
						<img class="card-img-top" src="./resources/Image/mac.jpg"
							width="450" height="300" alt="" />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">13형 MacBook Pro</h5>
								<!-- Product reviews-->
								<div
									class="d-flex justify-content-center small text-warning mb-2">
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
								</div>
								<!-- Product price-->
								<span class="text-muted text-decoration-line-through">응모 기간 4/25 ~ 4/30
									-</span> 5/3 까지 연장
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="clo1.jsp">응모하기</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Sale badge-->
						<div class="badge bg-primary text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">Hot</div>
						<!-- Product image-->
						<img class="card-img-top" src="./resources/Image/jo.jpg"
							width="450" height="300" alt="강아지 스누피 쿠키" />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">에어조던 미드 다크 틸</h5>
								<!-- Product price-->
								<br>
								응모 기간 3/1 ~ 3/14
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="sno.jsp">응모하기</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top" src="./resources/Image/max.jpg"
							width="450" height="300" alt="댕댕이 케이프 민트" />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">에어팟 맥스 - 실버</h5>
								<br>
								<div
									class="d-flex justify-content-center small text-warning mb-2">
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
								</div>
								<!-- Product price-->
								응모 기간 3/1 ~ 3/13
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="dal.jsp">응모하기</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col mb-5">
					<div class="card h-100">
						<!-- Soldout badge-->
						<div class="badge bg-danger text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">마감</div>
						<!-- Product image-->
						<img class="card-img-top" src="./resources/Image/toy.jpg"
							width="450" height="300" alt="쿼카 장난감" />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">쿼카 장난감</h5>
								<!-- Product reviews-->
								<div
									class="d-flex justify-content-center small text-warning mb-2">
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
								</div>
								<!-- Product price-->
								<span class="text-muted text-decoration-line-through">상시응모</span>
								<br>
								응모 마감
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="toy.jsp">응모하기</a>
							</div>
						</div>
					</div>
				</div>
				<div class="container">

					
				</div>
			</div>
		</div>
	</section>
	<!-- Three -->
	<section id="three" class="wrapper style1 fade-up">
		<div class="inner">
			<h2> Q & A </h2>
			<hr>
			<p> 궁금하신 사항은 언제든지 문의해 주시기를 바랍니다. </p>
            <p> 성심성의껏 답변해 드리겠습니다. </p>
			<div class="split style1">
				<section>
					<form class="gform" method="POST" action="https://script.google.com/macros/s/AKfycbxomUcBUlk-OmzUnOjFsX8kdUW71gHi_7fiP3NsC8k9wPVqVxa-_os5ObGr3dWHCD1d/exec">
						<div class="fields">
							<div class="field half">
								<label for="name"> 이름 </label>
								<input type="text" name="name" id="name" />
							</div>
							<div class="field half">
								<label for="email"> 이메일 </label>
								<input type="email" name="email" id="email" />
							</div>
							<div class="field">
								<label for="message"> 문의 내용 </label>
								<textarea name="message" id="message" rows="5"></textarea>
							</div>
						</div>
						<button onclick="javascript:btn()" class="button submit">
							<i class="fa fa-paper-plane"></i>&nbsp;보내기
						</button>

						<div style="display:none" class="thankyou_message">
							<!-- You can customize the thankyou message by editing the code below -->
							<h5>문의주셔서 감사합니다. 빠른 시일 내에 답변 드리겠습니다🚀</h5>
							</h2>
						</div>
					</form>
				</section>
				<section>
					<ul class="contact">
						<li>
							<h3>이메일</h3>
							<a href="#"> happydraw@naver.com </a>
						</li>
						<li>
							<h3>문의 전화</h3>
							<span>010-0000-0000</span>
						</li>
						<li>
							<h3>Social</h3>
							<ul class="icons">												
								<li><a href="https://github.com/dduddu00" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
								<li><a href="https://www.youtube.com/@sunghothegamebird" class="icon brands fa-youtube"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							</ul>
						</li>
					</ul>
				</section>
			</div>
		</div>
	</section>
	<br>
	<hr>
	
		<%@ page import="java.util.Date"%>


	<footer class="container">
		<p>&copy; Happydraw</p>
		<br>
		<p>대표 : 박성호, 이강인, 양진영, 이경서, 최수연</p>
	</footer>
	<hr>
	<div class="text-center">
		<%
		
		Date day = new java.util.Date();
		String am_pm;
		int hour = day.getHours();
		int minute = day.getMinutes();
		int second = day.getSeconds();
		if (hour / 12 == 0) {
			am_pm = "AM";
		} else {
			am_pm = "PM";
			hour = hour - 12;
		}
		String CT = hour + ":" + minute + ":" + second + " " + am_pm;
		out.println("현재 접속  시각: " + CT + "\n");
		%>
	</div>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<script data-cfasync="false" type="text/javascript" 
	src="https://cdn.rawgit.com/dwyl/html-form-send-email-via-google-script-without-server/master/form-submission-handler.js">
	</script> 
</body>
</html>




