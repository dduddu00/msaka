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
				<h1 class="display-4 fw-bolder">배송지 입력</h1>
				<p class="lead fw-normal text-white-50 mb-0">고객님의 주문 정보를 입력해주세요.</p>
			</div>
		</div>
	</header>
<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">	
			<div class="container">
		<form class="form-horizontal" method="post" onsubmit="ok()">
			<script>

				function ok() {
				
				  alert("배송지 입력이 완료되어 배송 요청이 완료되었습니다.");
				
				}
				
				</script>
			<h3>배송 정보</h3>
			<br>
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<label for="email" class="col-sm-2">이메일</label>
				<div class="col-sm-3">
					<input type="email" id="email"
						   placeholder="example@gmail.com"
						   required class="form-control">
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

			<hr>



			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-3">
					<input id="member_post" type="text" placeholder="도로명주소 입력" readonly
						onclick="findAddr()" name="zipCode"> <input id="member_addr" type="text"
						placeholder="주소" readonly class="form-control"> 
					<input type="text" placeholder="상세 주소" class="form-control">
					<script>
						function findAddr() {
							new daum.Postcode(
									{
										oncomplete : function(data) {

											console.log(data);

											// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
											// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
											// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
											var roadAddr = data.roadAddress; // 도로명 주소 변수
											var jibunAddr = data.jibunAddress; // 지번 주소 변수
											// 우편번호와 주소 정보를 해당 필드에 넣는다.
											document
													.getElementById('member_post').value = data.zonecode;
											if (roadAddr !== '') {
												document
														.getElementById("member_addr").value = roadAddr;
											} else if (jibunAddr !== '') {
												document
														.getElementById("member_addr").value = jibunAddr;
											}
										}
									}).open();
						}
					</script>
					<script
						src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
				</div>
			</div>
			<br>

			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary" value="등록" /> 
					<a href="main.jsp" class="btn btn-secondary" role="button"> 취소 </a>
				</div>
			</div>

		</form>
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
</body>
</html>
