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
				<link rel="shortcut icon" href="resources/Image/face.ico"> 
				<link rel="stylesheet" type="text/css" href="css/demo.css" />
				<link rel="stylesheet" type="text/css" href="css/style.css" />
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
                    <form class="d-flex">
                        <a href="./search.jsp" class="btn btn-outline-dark mt-auto">응모 내역</a>
                    </form>
                </div>
            </div>
        </nav>

     <section class="py-3">
		<div class="container px-9 px-lg-5 mt-5">
            
        <div style="text-align: center">
         <h1>HAPPYDRAW를 소개합니다.</h1>
            <style>
                h4{line-height:37px
                }
            </style>
            <h4 style="color: gray">
                <br>HAPPYDRAW는 여러분들을 행복하게 해 줄 응모사이트입니다. 
                <br>관심 있는 상품에 응모하여 행운을 가져보세요 !
                <br> <h6>아이콘을 누르면 정보가 나옵니다.</h6>
            </h4>
            <br>
            <a href="https://www.instagram.com/00_c.sy/"><img src="./resources/Image/insta.png" width="70px" height="70px"></a>
            <img src="./resources/Image/call.png" onclick=alert("010-0000-0000") width="70px" height="70px">
            <img src="./resources/Image/mail.png" onclick=alert("happydraw@nate.com") width="70px" height="70px">   
 
           <br><br><br><br>
    

        <div style="width:600px; height:370px;  float:left; ">
            <img src="./resources/Image/sh.jpg" width="240" height="240">
            <br>
            <br>
            <h3>박성호</h3>
            안녕하다 나는 Sung Ho Park 다
            <br> 활기찬 아침 HappyDraw 다
        </div>
        <div style="width:600px; height:370px; float:left;">
            <img src="./resources/Image/gang.jpg" width="220" height="250" >
            <br>
            <br>
            <h3>이강인</h3>
            축구 3번해본 슛돌이 이강인입니다.
        </div>
            <br>
            <br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

        <div style="width:400px; height:370px;  float:left; ">
                <img src="./resources/Image/jin.jpg" width="200" height="230">
                <br>
                <br>
                <h3>양진영</h3>
                작은 소리에도 혼자 깜!!짝!!!! 놀라니  
                <br>항상 조심히 다뤄주세요!!!
        </div>
        <div style="width:400px; height:370px; float:left;">
                <img src="./resources/Image/seo.jpg" width="250" height="230" >
                <br>
                <br>
                <h3>이경서</h3>
                웃을 때 주우재 닮은 우파루파입니다.
                <br> 목에 있는 아가미로 공격해요.
        </div>
        <div style="width:400px; height:370px; float:left;">
                <img src="./resources/Image/soo.jpg" width="200" height="230" >
                <br>
                <br>
                <h3>최수연</h3>
                마조리카 닮았다는 최수연입니다.
                <br> 저는 아닌 것 같아요.
        </div>

            
    
    </div>
    </div>
</section>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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