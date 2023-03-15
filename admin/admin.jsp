<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE HTML>
<html>
	<head>
		<title> Admin page </title>
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
		
		
		<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
		<!-- Core theme CSS (includes Bootstrap)-->
		<link rel="stylesheet" href="../resources/css/styles.css" />

		<link rel="stylesheet" href="../css/style.css" />
		<noscript><link rel="stylesheet" href="../css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<a href="index.html" class="title"> FROMZERO_admin </a>
				<nav>
					<ul>
						<li><a href="" class="active"> 내용입력 </a></li>
						<li><a href="" class="active"> 내용수정 </a></li>
						<li><a href="" class="active"> 내용삭제 </a></li>
						<li><a href="index.html" class="active"> 로그아웃 </a></li>
					</ul>
				</nav>
			</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main" class="wrapper">
						<div class="inner">
							<h1 class="major"> 내용 입력 </h1>
 							  <form method=post action=insert.php> 							  
 									
  							  파일이름 :
  							  <input type="uploadForm" name=name action="upload.php" enctype="multipart/form-data" >
  							  <br>
  							  <br>
  							  
  							  파일선택 :
  							  <input type = "file" name="uploadfile" id="uploadfile">
  							  <br>
  							  
  							  
  							  
  							  <br><input type = "submit" value ="uploadfile" name="submit">
  							  <br>
  							 </form>
						</div>
					</section>
			</div>

		<!-- Footer -->
			<footer id="footer" class="wrapper alt">
				<div class="inner">
					<ul class="menu">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>