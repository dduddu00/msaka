<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
	<head>
        <head>
            <head>
            <meta charset="utf-8" />
            <title>Happydraw!</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
                    <meta name="description" content="Parallax Content Slider with CSS3 and jQuery" />
                    <meta name="keywords" content="slider, animations, parallax, delayed, easing, jquery, css3, kendo UI" />
                    <meta name="author" content="Codrops" />
                    <link rel="shortcut icon" href="resources/Image/face.ico"> 
                    <link rel="stylesheet" type="text/css" href="css/demo.css" />
                    <link rel="stylesheet" type="text/css" href="./resources/css/bo.css" />
                    <script type="text/javascript" src="./resources/js/modernizr.custom.28468.js"></script>
                    <link href='http://fonts.googleapis.com/css?family=Economica:700,400italic' rel='stylesheet' type='text/css'>
                    <noscript>
                        <link rel="stylesheet" type="text/css" href="css/nojs.css" />
                    </noscript>
            <script src="https://kit.fontawesome.com/e8f495f95b.js"
                crossorigin="anonymous"></script>
            
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
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    MacBook Pro 당첨자 발표합니다.
                </div>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>1</dd>
                    </dl>
                    <dl>
                        <dt>글쓴이</dt>
                        <dd>박성호</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>2023.5.3</dd>
                    </dl>
                    <dl>
                        <dt>조회</dt>
                        <dd>121</dd>
                    </dl>
                </div>
                <div class="cont">
                    안녕하세요, <strong>HappyDraw</strong> 입니다.<br><br>
                    이번 MacBook Pro 이벤트에 응모해주셔서 감사합니다. <br><br>
                    당첨자는 <strong>"양진영"</strong> 님입니다. <br><br>
                    입력해주신 정보를 기반으로 배송 진행하겠습니다.
                    <br>
                    <br>
                    <h2>유의사항</h2>
                    ※ 당첨 여부는 상단의 응모 내역에서 확인 가능합니다. 
                    <br>※ 당첨자에 한해 문자로 배송 메시지가 발송됩니다.
                    <br>※ 부당한 방법으로 응모한 고객의 경우 당첨 취소 및 추후 이벤트 응모 시 불이익을 받을 수도 있습니다.
                    
                </div>
            </div>
            <div class="bt_wrap">
                <a href="board.jsp" class="on">목록</a>
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




