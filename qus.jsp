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
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5">
			<div class="navbar_logo">
			<i class="fa-solid fa-cubes-stacked"></i>
			<a class="navbar-brand" href="main.jsp">Happydraw</a>
			</div>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="main.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="intro.jsp">기업 소개</a></li>
					<li class="nav-item"><a class="nav-link" href="main.jsp">상품 목록</a></li>
				   
					<li class="nav-item dropdown">
					
						<a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							
							<li><a class="dropdown-item" href="board.jsp">공지사항</a></li>
							<li><a class="dropdown-item" href="./qus.jsp">문의하기</a></li>
							
							
						</ul>
					</li>
					
				</ul>
				<%--장바구니 기능 --%>
				<form class="d-flex">
					<a href="./search.jsp" class="btn btn-outline-dark mt-auto">응모 내역</a>
				</form>
			</div>
		</div>
	</nav>


	<section id="three" class="wrapper style1 fade-up">
		<div class="inner">
			<h2 > Q & A / 문의하기 </h2>
            <hr>
			<p> 궁금하신 사항은 언제든지 문의해 주시기를 바랍니다. </p>
            <p> 성심성의껏 답변해 드리겠습니다. </p>
			<hr>
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




