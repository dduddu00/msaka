<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
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
				<link rel="stylesheet" type="text/css" href="css/bo.css" />
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
		<div id="da-slider3" class="da-slider3">
			<div class="da-slide3">
				<h2>공지사항</h2>
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

<div class="board_wrap">

	<div class="board_list_wrap">
		<div class="board_list">
			<div class="top">
				<div class="num">번호</div>
				<div class="title">제목</div>
				<div class="writer">글쓴이</div>
				<div class="date">작성일</div>
				<div class="count">조회</div>
			</div>
			<div>
				<div class="num">1</div>
				<div class="title"><a href="view.jsp">맥북 당첨자 발표합니다.</a></div>
				<div class="writer">운영자</div>
				<div class="date">2023.3.16</div>
				<div class="count">122</div>
			</div>


		</div>
		<div class="board_page">
			<a href="#" class="bt first"><<</a>
			<a href="#" class="bt prev"><</a>
			<a href="#" class="num on">1</a>
			<a href="#" class="num">2</a>
			<a href="#" class="num">3</a>
			<a href="#" class="num">4</a>
			<a href="#" class="num">5</a>
			<a href="#" class="bt next">></a>
			<a href="#" class="bt last">>></a>
		</div>
		<div class="bt_wrap">
			<a href="write.jsp" class="on">등록</a>
			<!--<a href="#">수정</a>-->
		</div>
	</div>
</div>



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




