<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="utf-8" />
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>Happydraw!</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Parallax Content Slider with CSS3 and jQuery" />
        <meta name="keywords" content="slider, animations, parallax, delayed, easing, jquery, css3, kendo UI" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
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
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message" >
	<jsp:include page="menu.jsp" />	
	
    <div class="container">
		<!-- Codrops top bar -->
		<div id="da-slider2" class="da-slider2">
			<div class="da-slide2">
				<h2>응모하기</h2>
				<div class="da-img2"><img src="./resources/Image/inin.jpg" width="1250" height="340" alt="iab.jpg" /></div>
                <br>
                <a href="./main.jsp" class="da-link2">응모 목록</a>
            </div>
		</div>
	</div>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.cslider.js"></script>
	<script type="text/javascript">
		$(function() {
		
			$('#da-slider').cslider();
			
		});
	</script>	
	
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">	
	<div class="container">
		<form name="macbook" action="./main.jsp" class="form-horizontal" method="get" onsubmit="ok()">
			<script>
				function ok() {
				  alert("응모 완료되었습니다. 응모해주셔서 감사합니다.");
				}
			</script>
	
	
		<h1>제품 구성</h1>
        <br>
		<img src="./resources/Image/mac1.jpg" width="950" height="420">
		<br>
		<br>
		<br>
		<hr>
		<br>

		<div class="form-group row">
			<label class="col-sm-2">이름</label>
			<div class="col-sm-3">
				<input type="text" name="name" class="form-control" >
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">이메일</label>
			<div class="col-sm-3">
				<input type="email" id="email"  name="email" class="form-control" >
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">전화번호</label>
			<div class="col-sm-3">
				<input type="text" id="phone"  name="phone" class="form-control" >
			</div>
		</div>

        <div class="form-group row">
			<label class="col-sm-2">응모 상품</label>
			<div class="col-sm-3">
				<select name="mac"> <option value="mac">MacBook Pro</option>
			</div>
		</div>

		<div class="form-group row">
			<label class="col-sm-2">응모 상품</label>
			<div class="col-sm-3">
				<select name="iab2"> <option value="010">MacBook Pro</option>
			</div>
		</div>
		
		<div class="form-group row2">
			<div class="col-sm-13">
				<input type="button" class="btn btn-dark" value="응모하기" onclick="javascript:ok()">
			</div>
		</div>	
    </form>


		<br>[응모 일정]
		<br>4월 17일(월) 오후 1시 ~ 4월 23일(일) 오후 1시
		<br>
		<br>
		<br>[응모 안내 사항]
		<br>이번 응모는 "HAPPYDRAW" 사이트를 통해서만 가능합니다.
		<br>응모 당일 접속 인원이 많아 오류가 발생할 수 있으니 사전 상품 옵션 확인을 권장합니다.
		<br>- 회원가입 필요없이 응모 기간 내에 응모가 가능합니다.
		<br>- 응모 당일 접속 인원이 많을 경우 응모 과정에서 오류가 발생할 수 있어 응모 후 반드시 응모 내역을 확인 부탁드립니다.
		<br>- 응모 시 지정된 사이즈, 옵션으로만 응모가 가능하며 응모 이후 취소 및 사이즈 변경이 불가하므로 신중히 응모를 부탁드립니다.
		<br>
		<br>
		<br>[당첨자 발표]
		<br>4월 24일(월) 오전 11시
		
		<br>[배송지 입력 기간]
		<br>4월 24일(월) 오전 11시 ~ 4월 26일(수) 오전 11시
		<br>
		<br>
		<br>[미수령 당첨자 발표]
		<br>4월 27일(목) 오전 11시
		<br>
		<br>[배송 안내 사항]
		<br>- HAPPYDRAW 라플 제품의 경우 출고 순서는 결제 시간과 무관한 점 참고 부탁드립니다.
		<br>- 라플 특성상 물류 출고량이 많아 배송이 지연되는 점 양해 부탁드립니다. 
	</div>
	</div>
	</section>
	</fmt:bundle>
	
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
		
</body>
</html>
