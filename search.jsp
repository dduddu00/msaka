<%@ page contentType="text/html; charset=utf-8"%>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>배송 정보</title>
        
        <script src="https://kit.fontawesome.com/e8f495f95b.js"
            crossorigin="anonymous"></script>
        
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="css/favicon.ico" />
        <!-- Bootstrap icons-->
        <link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
        <!-- Core theme CSS (includes Bootstrap)-->
                <link rel="stylesheet" href="./resources/css/styles.css"  />
        
		<style>
			h3{
				font-size: 28px;
				font-weight: bold;

			}
		</style>

        </head>
<body>
	<jsp:include page="menu.jsp" />

	<header class="bg-dark py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="text-center text-white">
				<h1 class="display-4 fw-bolder" >응모 내역</h1>
				<p class="lead fw-normal text-white-50 mb-0">이름, 핸드폰 번호를 입력하여 응모 내역을 확인하세요</p>
			</div>
		</div>
	</header>


	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">	
			<div class="container">
		<form action="./processShippingInfo.jsp" class="form-horizontal"
			method="post">
			<input type="hidden" name="cartId"
				value="<%=request.getParameter("cartId")%>">

			<h3>조회 정보 입력</h3>
			<br>
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control">
				</div>
			</div>
            
			<div class="form-group row">
				<label class="col-sm-2">연락처</label>
				<div class="col-sm-3">
					<select name="phone2">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="019">019</option>
					</select> - <input type="text" maxlength="4" size="4" name="phone3">
					- <input type="text" maxlength="4" size="4" name="phone4">
				</div>
			</div>

			<br>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<a href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>"
						class="btn btn-secondary" role="button"> 이전 </a> <input
						type="submit" class="btn btn-primary" value="조회하기" /> <a
						href="main.jsp" class="btn btn-secondary"
						role="button"> 취소 </a>
				</div>
			</div>
		</form>
		<br>
		<br>
		<br>
		<br>
	</div>
	</div>
	
    

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
</body>
</html>
