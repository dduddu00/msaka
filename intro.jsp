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
    
    <jsp:include page="menu.jsp"/>

     <section class="py-3">
		<div class="container px-4 px-lg-5 mt-5">
        <div style="text-align: center">
    <h1>HAPPYDRAW를 소개합니다.</h1>
    <img src="./resources/Image/big.jsp.jpg" width="200" height="200">
    <br/>
    <a href="https://www.instagram.com/00_c.sy/"><img src="./resources/Image/insta.png" width="70px" height="70px"></a>
    <img src="./resources/Image/call.png" onclick=alert("010-0000-0000") width="70px" height="70px">
    <img src="./resources/Image/mail.png" onclick=alert("happydraw@nate.com") width="70px" height="70px">   
 
    <h4 style="color: gray"><br>HAPPYDRAW는 <br>여러분들을 행복하게 해 줄 응모사이트 입니다. 관심 있는 상품에 응모하여 행운을 가져보세요 !<br> <h6>아이콘을 누르면 정보가 나옵니다.</h6></h4>
    
    <h5> 
    
    <img src="./resources/Image/cora.jpg" width="200" height="200">
    <br/>
    <br>주인장 강아지 : 코라 
    <br>나이는 13살로 보기보다 어려보여요.
    <br>항상 꼬질해보이는 털과 혓바닥이 매력이랍니다 :)
    <br/>
    <img src="./resources/Image/kong.jpg" width="200" height="200">
    <br/>
    <br> 주인장 친구 강아지 : 달콩이
    <br> 나이는 7살이에요, 뽀글뽀글 갈색털과 촉촉한 코가 매력이랍니다 :> 
        
    
    </div>
    </div>
    </section>

    

    <br>
    <hr>

    <%@ page import="java.util.Date"%>


    <footer class="container">
        <p>&copy; Happydraw COMPANY</p>
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

    </body>
    
</html>