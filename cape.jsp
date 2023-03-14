<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
        <link rel="stylesheet" href="./pro.css"  />
<title>상품 상세 정보</title>
	<script src="https://kit.fontawesome.com/e8f495f95b.js" crossorigin="anonymous"></script>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body>

	<jsp:include page="menu.jsp"/>
	<header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">상품 정보</h1>
                    
                </div>
            </div>
     </header>
     
		<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
		<div class="row">
			<div class="col-md-5">
			<img class="card-img-top" src="./resources/Image/kap2.jpg" width="450" height="300" alt="강아지 케이프" />
			</div>
			<div class="col-md-6">
				<h3>댕댕이 스카프 -오렌지</h3>
				<p>반려동물 뜨개 꽃 케이프! 한땀한땀 직접 만든 핸드메이드 케이프입니다. 애견의 사이즈에 알맞게 제작해드립니다. 핸드메이드로 제작되고 있기 때문에 제품별로 모양이나 꽃 위치가 조금씩 상이할 수 있습니다.
				<p><b>상품 코드 : </b><span class="badge badge-danger"> C910</span>
				<p><b>재고 수</b> : 12
				<h4>12000원</h4>
				<p><a href="#" class="btn btn-info"> 상품 주문 </a> 
				<a href="#" class="btn btn-warning" onclick="addToCart()"> 장바구니</a> 
				<a href="./product.jsp" class="btn btn-secondary"> 상품 목록 </a>
			</div>
		</div>
		<hr>
		</div>
		</section>
     <jsp:include page="footer.jsp" />
</body>
</html>








